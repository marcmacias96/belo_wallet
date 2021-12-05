import 'package:crypto_belo/presentation/core/actions/primary_button.dart';
import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';

import 'widgets/convert_input.dart';

class ConvertPage extends StatelessWidget {
  const ConvertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        title: Text(
          "Convertir",
          style: Theme.of(context).textTheme.bodyText2,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.close,
              color: Colors.black,
            ),
            onPressed: () => context.router.pop(),
          )
        ],
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        child: Column(
          children: [
            const ConvertInput(),
            SizedBox(height: 50.h),
            const ConvertInput(isFrom: false),
            const Spacer(),
            NumericKeyboard(
              onKeyboardTap: (number) => {},
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            PrimaryButton(
              isActive: false,
              text: 'Vista previa de conversion',
              onTap: () {},
              hasIcon: true,
              fontSize: 18,
            )
          ],
        ),
      ),
    );
  }
}
