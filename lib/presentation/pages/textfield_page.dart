import 'package:class_room/presentation/pages/create_post_textfield.dart';
import 'package:class_room/ui/styles/color_palette.dart';
import 'package:class_room/ui/widgets/common/global_text_field.dart';
import 'package:flutter/material.dart';
import 'package:class_room/core/constants/configs.dart';

class TextfieldPage extends StatefulWidget {
  @override
  _TextfieldPageState createState() => _TextfieldPageState();
}

class _TextfieldPageState extends State<TextfieldPage> {
  TextEditingController emailController =
      TextEditingController(text: 'kamoddhamla.s@yopmail.com');
  TextEditingController passwordController =
      TextEditingController(text: 'Test@123');
  RegExp regexEmail;
  bool isValidEmail = false;
  bool isValidPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Textfields"),
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // GlobalTextField(
                  //   controller: emailController,
                  //   hintText: "John Doe",
                  //   label: "FULL NAME",
                  //   hintColor: Palette.darkTextColor,
                  // ),
                  SizedBox(
                    height: 15,
                  ),
                  GlobalTextField(
                    isChangeLabelColor: isValidEmail,
                    controller: emailController,
                    hintText: "johndoe@gmail.com",
                    label: "Email",
                    hintColor: Palette.darkTextColor,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GlobalTextField(
                    isChangeLabelColor: isValidPassword,
                    controller: passwordController,
                    hintText: "PASSWORD",
                    label: "Password",
                    hintColor: Palette.darkTextColor,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GlobalTextField(
                    hintText: "MOBILE NUMBER",
                    hintColor: Palette.hintLightGrey,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GlobalTextField(
                    isBorder: true,
                    hintText: "write a comment ...",
                    hintColor: Palette.hintLightGrey,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GlobalTextField(
                    isBorder: true,
                    hintText: "search assignment",
                    hintColor: Palette.hintLightGrey,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreatePostTextField()));
                    },
                    child: Text("goto"),
                  )
                ]),
          ),
        )));
  }

  @override
  void initState() {
    super.initState();
    emailController.addListener(_updateUI);
    passwordController.addListener(_updateUI);
    regexEmail = RegExp(AppConfig.patternEmail);
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  _updateUI() {
    setState(() {
      isValidEmail = regexEmail.hasMatch(emailController.text);
      isValidPassword = passwordController.text.length > 0;
      print('nsjnjs ' + isValidEmail.toString());
      print('nsjnjs ' + isValidPassword.toString());

      // isValidEmail = regexEmail.hasMatch(emailController.text);
      // isValidPassword = passwordController.text.length > 0;
    });
  }
}
