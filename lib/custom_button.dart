import 'package:flutter/material.dart';
import 'package:weekly1/color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 92,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(
            100,
          ),
        ),
        color: ColorConst.primary,
      ),
      alignment: Alignment.center,
      child: const Text(
        'Submit',
        style: TextStyle(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
