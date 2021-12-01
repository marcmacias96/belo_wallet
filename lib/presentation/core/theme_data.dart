import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0xff2BFCB2);
  static const Color backgroundColor = Color(0xff2036FF);
  static const Color backgroundColorLight = Color(0xffFFFFFF);
  static const Color scaffoldBackgroundColor = Color(0xFFF3F6FE);

  static const Color accentColor = Color(0xFF3D24FA);
  static const Color greyAccent = Color(0xff3D24FA);
  static const Color grey = Color(0xffBDBDBD);

  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppTheme.primaryColor,
    primaryColorLight: AppTheme.backgroundColorLight,
    scaffoldBackgroundColor: AppTheme.scaffoldBackgroundColor,
    primaryColorDark: Colors.black,
    backgroundColor: AppTheme.backgroundColor,
    indicatorColor: const Color(0xFFC4C4C4),
    focusColor: accentColor,
    unselectedWidgetColor: AppTheme.grey,
    textTheme: lightTextTheme,
  );

  static final TextTheme lightTextTheme = TextTheme(
      //Saludo en welcome
      headline4: _headLine4Dark,

      //Titulo login
      headline5: _headLine5Light,

      //Titulo en page view en pagina de bienvenida
      headline6: _headLine6Light,

      //Descripcion en page view en pagina de bienvenida
      bodyText1: _bodyText1Light,

      //Eres nuevo en login page
      bodyText2: _bodyText2Light,

      //Utilizada en snackbar
      caption: _captionLight,

      //Boton con fondo dark
      subtitle1: _buttonDark,

      //Boton con fondo light
      subtitle2: _buttonLight);

  static final TextStyle _headLine6Light = TextStyle(
      color: Colors.black, fontSize: 36.sp, fontWeight: FontWeight.w700);

  static final TextStyle _headLine5Light = _headLine6Light.copyWith(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static final TextStyle _headLine4Dark = _headLine5Light.copyWith(
    letterSpacing: 1,
    fontSize: 30.sp,
    color: Colors.black,
  );

  static final TextStyle _bodyText1Light = TextStyle(
      color: AppTheme.greyAccent,
      fontSize: 26.sp,
      fontWeight: FontWeight.w400,
      height: 1.5);

  static final _bodyText2Light = _bodyText1Light.copyWith(
    fontSize: 40.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static final TextStyle _buttonDark = _headLine6Light.copyWith(
      fontWeight: FontWeight.w400, color: Colors.white, fontSize: 36.sp);

  static final TextStyle _captionLight =
      _bodyText2Light.copyWith(color: Colors.white);

  static final TextStyle _buttonLight =
      _buttonDark.copyWith(color: AppTheme.greyAccent);
}
