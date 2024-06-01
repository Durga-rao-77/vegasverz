import 'package:flutter/material.dart';
import 'package:vegasverz/views/common/common_components/text_field.dart';
import 'package:vegasverz/views/common/common_decorations/app_colors.dart';
import 'package:vegasverz/views/common/common_decorations/app_images.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ColorthirdColor,
      appBar: AppBar(
        backgroundColor: AppColors.ColorthirdColor,
      ),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              height: 50,
              width: 50,
              child: Image.asset(
                AppImages.imageScreen,
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                TextWidgets.firstName,
                style: TextStyle(color: AppColors.whitColor),
              ),
              Text(
                TextWidgets.secondName,
                style: TextStyle(color: AppColors.whitColor2),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
            width: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                TextWidgets.textName,
                style: TextStyle(color: AppColors.yellowColor2),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                TextWidgets.textName2,
                style: TextStyle(color: AppColors.yellowColor2),
              )
            ],
          ),
          const Divider(
            color: Colors.redAccent, //color of divider
            height: 5, //height spacing of divider
            thickness: 3, //thickness of divier line
            indent: 25, //spacing at the start of divider
            endIndent: 25, //spacing at the end of divider
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: AppColors.whitColor,
                border: OutlineInputBorder(),
                labelText: "Email",
              ),
              //maxLines: 5,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: AppColors.whitColor,
                border: OutlineInputBorder(),
                labelText: "Password",
              ),
              //maxLines: 5,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: AppColors.whitColor,
                border: OutlineInputBorder(),
                labelText: "Confirm Password",
              ),
              //maxLines: 5,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            TextWidgets.textName3,
            style: TextStyle(color: AppColors.whitColor2),
          ),
          const Text(
            TextWidgets.textName4,
            style: TextStyle(color: AppColors.whitColor),
          ),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            color: AppColors.whitColor,
            height: 5,
            thickness: 3,
            indent: 25,
            endIndent: 25,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.facebook),
              SizedBox(
                width: 10,
              ),
              Text(TextWidgets.textName5)
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/WelcomeScreen');
            },
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(200),
            )),
            child: const Text("Sign Up"),
          )
        ],
      ),
    );
  }
}
