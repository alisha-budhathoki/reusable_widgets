library popup_menu;

// import 'dart:core';
import 'dart:math';
import 'dart:ui';

import 'package:class_room/ui/styles/color_palette.dart';
import 'package:flutter/material.dart';
import 'triangle_painter.dart';

abstract class MenuItemProvider {
  String get menuTitle;

  TextStyle get menuTextStyle;

  TextAlign get menuTextAlign;
}

class MenuItem extends MenuItemProvider {
  String title; // 菜单标题
  TextStyle textStyle;
  TextAlign textAlign;

  MenuItem({this.title, this.textStyle, this.textAlign});

  @override
  String get menuTitle => title;

  @override
  TextStyle get menuTextStyle =>
      textStyle ??
      TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10.0);

  @override
  TextAlign get menuTextAlign => textAlign ?? TextAlign.center;
}

class PopupMenu {
  static var itemWidth = 72.0;
  static var itemHeight = 65.0;
  static var arrowHeight = 10.0;
  OverlayEntry _entry;
  List<MenuItemProvider> items;

  /// The left top point of this menu.
  Offset _offset;

  /// Menu will show at above or under this rect
  Rect _showRect;

  /// if false menu is show above of the widget, otherwise menu is show under the widget
  bool _isDown = true;

  /// The max column count, default is 4.
  int _maxColumn;

  /// callback
  VoidCallback dismissCallback;

  // MenuClickCallback onClickMenu;
  // PopupMenuStateChanged stateChanged;

  Size _screenSize; // 屏幕的尺寸

  /// Cannot be null
  static BuildContext context;

  /// style
  Color _backgroundColor;
  Color _highlightColor;
  Color _lineColor;

  /// It's showing or not.
  bool _isShow = false;

  bool get isShow => _isShow;

  PopupMenu(
      {BuildContext context,
      VoidCallback onDismiss,
      int maxColumn,
      Color backgroundColor,
      Color highlightColor,
      Color lineColor,
      List<MenuItemProvider> items}) {
    this.dismissCallback = onDismiss;
    this.items = items;
    this._maxColumn = maxColumn ?? 4;
    this._backgroundColor = Palette.darkTextColor;
    this._lineColor = Palette.darkTextColor;
    this._highlightColor = Palette.darkTextColor;
    if (context != null) {
      PopupMenu.context = context;
    }
  }

  void show({Rect rect, GlobalKey widgetKey}) {
    if (rect == null && widgetKey == null) {
      print("'rect' and 'key' can't be both null");
      return;
    }

    this.items = items ?? this.items;
    this._showRect = rect ?? PopupMenu.getWidgetGlobalRect(widgetKey);
    this._screenSize = window.physicalSize / window.devicePixelRatio;
    this.dismissCallback = dismissCallback;

    _calculatePosition(PopupMenu.context);

    _entry = OverlayEntry(builder: (context) {
      return buildPopupMenuLayout(_offset);
    });

    Overlay.of(PopupMenu.context).insert(_entry);
    _isShow = true;
  }

  static Rect getWidgetGlobalRect(GlobalKey key) {
    RenderBox renderBox = key.currentContext.findRenderObject();
    var offset = renderBox.localToGlobal(Offset.zero);
    return Rect.fromLTWH(
        offset.dx, offset.dy, renderBox.size.width, renderBox.size.height);
  }

  void _calculatePosition(BuildContext context) {
    _offset = _calculateOffset(PopupMenu.context);
  }

  Offset _calculateOffset(BuildContext context) {
    double dx = _showRect.left + _showRect.width / 2.0 - menuWidth() / 2.0;
    print('Value here:'+_showRect.left.toString()+"smn"+_showRect.right.toString()+"  "+menuHeight().toString()+"  "+menuWidth().toString());
    print("bshbd"+dx.toString());
    if (dx < 10.0) {
      dx = 10.0;
    }

    if (dx + menuWidth() > _screenSize.width && dx > 10.0) {
      double tempDx = _screenSize.width - menuWidth() - 10;
      if (tempDx > 10) dx = tempDx;
    }

    double dy = _showRect.top - menuHeight();
    if (dy <= MediaQuery.of(context).padding.top + 10) {
      // The have not enough space above, show menu under the widget.
      dy = arrowHeight + _showRect.height + _showRect.top;
      _isDown = false;
    } else {
      dy -= arrowHeight;
      _isDown = true;
    }

    return Offset(dx, dy);
  }

  double menuWidth() {
    return itemWidth;
  }

  // This height exclude the arrow
  double menuHeight() {
    return itemHeight;
  }

  LayoutBuilder buildPopupMenuLayout(Offset offset) {
    return LayoutBuilder(builder: (context, constraints) {
      return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          dismiss();
        },
        onVerticalDragStart: (DragStartDetails details) {
          dismiss();
        },
        onHorizontalDragStart: (DragStartDetails details) {
          dismiss();
        },
        child: Container(
          child: Stack(
            children: <Widget>[
              // triangle arrow
              Positioned(
                left: _showRect.left + _showRect.width / 2.0 - 7.5,
                top: false
                    ? offset.dy + menuHeight()
                    : offset.dy - arrowHeight,
                child: CustomPaint(
                  size: Size(15.0, arrowHeight),
                  painter:
                      TrianglePainter(isDown: false, color: _backgroundColor),
                ),
              ),
              // menu content
              Positioned(
                left: offset.dx,
                top: offset.dy,
                child: Container(
                  width: menuWidth(),
                  height: menuHeight(),
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Container(
                            width: menuWidth(),
                            height: menuHeight(),
                            decoration: BoxDecoration(
                                color: _backgroundColor,
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              children: _createRows(),
                            ),
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }

  List<Widget> _createRows() {
    List<Widget> rows = [];
    Color color = Colors.black45;
    Widget rowWidget = Container(
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: color))),
      height: itemHeight,
      child: Row(
        children: _createRowItems(0),
      ),
    );

    rows.add(rowWidget);

    return rows;
  }

  List<Widget> _createRowItems(int row) {
    List<MenuItemProvider> subItems = items.sublist(0, 1);
    List<Widget> itemWidgets = [];
    int i = 0;
    for (var item in subItems) {
      itemWidgets.add(_createMenuItem(
        item,
        i < (0),
      ));
    }
    return itemWidgets;
  }

  Widget _createMenuItem(MenuItemProvider item, bool showLine) {
    return _MenuItemWidget(
      item: item,
      showLine: showLine,
      lineColor: _lineColor,
      backgroundColor: _backgroundColor,
      highlightColor: _highlightColor,
    );
  }

  void dismiss() {
    if (!_isShow) {
      // Remove method should only be called once
      return;
    }

    _entry.remove();
    _isShow = false;
    if (dismissCallback != null) {
      dismissCallback();
    }
  }
}

class _MenuItemWidget extends StatefulWidget {
  final MenuItemProvider item;
  final bool showLine;
  final Color lineColor;
  final Color backgroundColor;
  final Color highlightColor;

  final Function(MenuItemProvider item) clickCallback;

  _MenuItemWidget(
      {this.item,
      this.showLine = false,
      this.clickCallback,
      this.lineColor,
      this.backgroundColor,
      this.highlightColor});

  @override
  State<StatefulWidget> createState() {
    return _MenuItemWidgetState();
  }
}

class _MenuItemWidgetState extends State<_MenuItemWidget> {
  var highlightColor = Color(0x55000000);
  var color = Color(0xff232323);

  @override
  void initState() {
    color = widget.backgroundColor;
    highlightColor = widget.highlightColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        color = highlightColor;
        setState(() {});
      },
      onTapUp: (details) {
        color = widget.backgroundColor;
        setState(() {});
      },
      onLongPressEnd: (details) {
        color = widget.backgroundColor;
        setState(() {});
      },
      onTap: () {
        if (widget.clickCallback != null) {
          widget.clickCallback(widget.item);
        }
      },
      child: Container(
          width: PopupMenu.itemWidth,
          height: PopupMenu.itemHeight,
          decoration: BoxDecoration(
              color: color,
              border: Border(
                  right: BorderSide(
                      color: widget.showLine
                          ? widget.lineColor
                          : Colors.transparent))),
          child: _createContent()),
    );
  }

  Widget _createContent() {
    return Container(
      child: Center(
        child: Material(
          color: Colors.transparent,
          child: Text(
            widget.item.menuTitle,
            style: widget.item.menuTextStyle,
            textAlign: widget.item.menuTextAlign,
          ),
        ),
      ),
    );
  }
// {
//   if (widget.item.menuImage != null) {
//     // image and text
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Container(
//           width: 30.0,
//           height: 30.0,
//           child: widget.item.menuImage,
//         ),
//         Container(
//           height: 22.0,
//           child: Material(
//             color: Colors.transparent,
//             child: Text(
//               "widget.item.menuTitle",
//               style: widget.item.menuTextStyle,
//             ),
//           ),
//         )
//       ],
//     );
//   } else {
//     // only text
//     return Container(
//       child: Center(
//         child: Material(
//           color: Colors.transparent,
//           child: Text(
//             widget.item.menuTitle,
//             style: widget.item.menuTextStyle,
//             textAlign: widget.item.menuTextAlign,
//           ),
//         ),
//       ),
//     );
//   }
// }
}
