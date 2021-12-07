import 'package:crypto_belo/presentation/core/actions/primary_button.dart';
import 'package:crypto_belo/presentation/core/animations/traslade_fade_animation.dart';
import 'package:crypto_belo/presentation/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              "assets/img/crypto.png",
              scale: 1.7,
            ),
          ),
          const TrasladeFadeAnimation(
            child: WhiteContainer(),
            delay: 0.8,
          )
        ],
      ),
    );
  }
}

class WhiteContainer extends StatelessWidget {
  const WhiteContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.all(35.sp),
        padding: EdgeInsets.all(35.sp),
        height: 0.5.sh,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
        child: Column(
          children: [
            TrasladeFadeAnimation(
              delay: 1.2,
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Hacelo simple Hacelo',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                        height: 1.5,
                        fontSize: 90.sp),
                  ),
                  TextSpan(
                    text: ' Belo',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Theme.of(context).focusColor,
                      fontSize: 55,
                    ),
                  ),
                ]),
              ),
            ),
            TrasladeFadeAnimation(
              delay: 1.2,
              child: Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  "assets/img/belo_logo.png",
                  scale: 2.2,
                ),
              ),
            ),
            const Spacer(),
            TrasladeFadeAnimation(
              delay: 1.4,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: PrimaryButton(
                  text: "Empezar",
                  onTap: () => context.router.pushAndPopUntil(
                      const LayoutRoute(),
                      predicate: (e) => false),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
