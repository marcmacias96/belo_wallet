import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final double borderRadius;
  final VoidCallback onTap;
  final bool isActive;
  const PrimaryButton({
    Key? key,
    required this.text,
    this.borderRadius = 20.0,
    required this.onTap,
    this.isActive = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 100.h,
        width: 0.8.sw,
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isActive
              ? Theme.of(context).primaryColor
              : Colors.grey.withOpacity(0.5),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Theme.of(context).focusColor,
              fontWeight: FontWeight.w800,
              fontSize: 35,
            ),
          ),
        ),
      ),
    );
  }
}
