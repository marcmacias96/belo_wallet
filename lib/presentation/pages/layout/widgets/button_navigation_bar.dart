import 'package:animations/animations.dart';
import 'package:crypto_belo/presentation/pages/convert/convert_page.dart';
import 'package:flutter/material.dart';

class BottonNavigationBar extends StatelessWidget {
  final Function onTap;
  const BottonNavigationBar({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        boxShadow: [
          BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
        ],
      ),
      child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomAppBar(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                      icon: const Icon(Icons.bar_chart),
                      iconSize: 30,
                      onPressed: () => onTap(0)),
                  OpenContainer(
                    transitionDuration: const Duration(seconds: 1),
                    transitionType: ContainerTransitionType.fade,
                    closedElevation: 0,
                    closedBuilder: (context, actions) {
                      return SizedBox(
                        child: Align(
                          heightFactor: 1,
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/img/splash.png",
                            height: 60,
                            width: 60,
                          ),
                        ),
                      );
                    },
                    closedShape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    openShape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    openBuilder: (context, actions) {
                      return const ConvertPage();
                    },
                  ),
                  IconButton(
                      icon: const Icon(Icons.account_balance_wallet_outlined),
                      iconSize: 30,
                      onPressed: () => onTap(1)),
                ]),
          )),
    );
  }
}
