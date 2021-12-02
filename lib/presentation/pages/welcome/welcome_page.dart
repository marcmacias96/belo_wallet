import 'package:crypto_belo/presentation/core/actions/primary_button.dart';
import 'package:crypto_belo/presentation/core/animations/traslade_fade_animation.dart';
import 'package:crypto_belo/presentation/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Image.asset(
                "assets/img/crypto.png",
                scale: 1.2,
              ),
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
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(25),
        height: 0.5.sh,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
        child: Stack(
          children: [
            TrasladeFadeAnimation(
              delay: 1.2,
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: RichText(
                  text: TextSpan(children: [
                    const TextSpan(
                      text: 'Hacelo simple Hacelo',
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                          fontSize: 48),
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
            ),
            TrasladeFadeAnimation(
              delay: 1.2,
              child: Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  "assets/img/belo_logo.png",
                  scale: 2.2,
                ),
              ),
            ),
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
