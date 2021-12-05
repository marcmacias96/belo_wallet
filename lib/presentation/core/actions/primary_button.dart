import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final double borderRadius;
  final VoidCallback onTap;
  final bool isActive;
  final bool hasIcon;
  final double fontSize;
  const PrimaryButton({
    Key? key,
    required this.text,
    this.borderRadius = 20.0,
    required this.onTap,
    this.isActive = true,
    this.hasIcon = false,
    this.fontSize = 35,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onTap,
        child: Container(
          height: 100.h,
          width: 0.8.sw,
          decoration: BoxDecoration(
            boxShadow: !isActive
                ? null
                : [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
            borderRadius: BorderRadius.circular(20),
            color: isActive
                ? Theme.of(context).primaryColor
                : Colors.grey.withOpacity(0.5),
          ),
          child: Row(
            mainAxisAlignment: text.length < 10
                ? MainAxisAlignment.center
                : MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Theme.of(context).focusColor,
                  fontWeight: FontWeight.w800,
                  fontSize: fontSize,
                ),
                textAlign: TextAlign.center,
              ),
              Visibility(
                visible: hasIcon,
                child: Image.asset(
                  'assets/img/splash.png',
                  height: 30,
                  width: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
