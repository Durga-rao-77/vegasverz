import 'package:flutter/material.dart';
import 'package:vegasverz/views/common/common_components/text_field.dart';
import 'package:vegasverz/views/common/common_decorations/app_colors.dart';

class PasswordDoneScreen extends StatefulWidget {
  const PasswordDoneScreen({super.key});

  @override
  State<PasswordDoneScreen> createState() => _PasswordDoneScreenState();
}

class _PasswordDoneScreenState extends State<PasswordDoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.ColorthirdColor,
        leading: GestureDetector(
          onTap: (){Navigator.pop(context);},
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.whitColor,
          ),
        ),

      ),
      backgroundColor: AppColors.ColorthirdColor,
      body: Column(
        children: [
          const SizedBox(
            height: 20,
            width: 20,
          ),
          Center(child: Image.asset('assets/images/done.png')),
          const SizedBox(
            height: 20,
          ),
          const Text(
            TextWidgets.textThree,
            style: TextStyle(color: AppColors.blackColor, fontSize: 30),
          ),
          const Text(
            TextWidgets.textFour,
            style: TextStyle(color: AppColors.blackColor, fontSize: 20),
          ),
          const SizedBox(height: 20,),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            child: const Text('Done'),
          ),
        ],
      ),
    );
  }
}
