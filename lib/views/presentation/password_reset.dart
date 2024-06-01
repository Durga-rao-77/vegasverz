import 'package:flutter/material.dart';
import 'package:vegasverz/views/common/common_decorations/app_colors.dart';

import '../common/common_components/elevated_button.dart';
import '../common/common_components/text_field.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: AppColors.ColorthirdColor,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                GestureDetector(
                onTap: (){Navigator.pop(context);},
                child: const Icon(
                  Icons.arrow_back,
                  color: AppColors.whitColor,
                ),
              ),
              Center(
                  child: CircleAvatar(
                radius: 56,
                backgroundColor: AppColors.whitColor,
                child: Padding(
                  padding: const EdgeInsets.all(8), // Border radius
                  child:
                      ClipOval(child: Image.network("assets/images/lock.jpg")),
                ),
              )),
              const SizedBox(
                height: 10,
              ),
              const Center(
                  child: Text(
                TextWidgets.textSix,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: AppColors.whitColor),
              )),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  TextWidgets.textFive,
                  style: TextStyle(color: AppColors.whitColor),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.whitColor,
                  border: OutlineInputBorder(),
                  labelText: 'New Password',
                ),
              ),
              const SizedBox(height: 10,),
              const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.whitColor,
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/otp');
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.yellow,
                  ),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 90.0, vertical: 3.0),
                    child: Text('Next'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
