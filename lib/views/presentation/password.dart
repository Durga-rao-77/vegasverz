import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vegasverz/views/common/common_components/text_field.dart';
import 'package:vegasverz/views/common/common_decorations/app_colors.dart';

class PasswordResetScreen extends StatefulWidget {
  const PasswordResetScreen({super.key});

  @override
  State<PasswordResetScreen> createState() => _PasswordResetScreenState();
}

class _PasswordResetScreenState extends State<PasswordResetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.ColorthirdColor,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(50.0),
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
                    child: ClipOval(
                        child: Image.network("assets/images/lock.jpg")),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  TextWidgets.textSix,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: AppColors.whitColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                  child: Text(
                TextWidgets.textEight,
                style: TextStyle(color: AppColors.whitColor),
              )),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    color: Colors.white,
                    child: const Center(child: Text('7')),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/passwordSecond');
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.yellow,
                  ),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 80.0, vertical: 3.0),
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
