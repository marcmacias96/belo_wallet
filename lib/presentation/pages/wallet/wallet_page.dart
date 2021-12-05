import 'package:crypto_belo/aplication/wallet/wallet_provider.dart';
import 'package:crypto_belo/presentation/core/animations/fade_animation.dart';
import 'package:crypto_belo/presentation/core/animations/traslade_fade_animation.dart';
import 'package:crypto_belo/presentation/core/widgets/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/crypto_active_item.dart';

class WalletPage extends ConsumerWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(walletNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: const CircleAvatar(
            foregroundImage: AssetImage("assets/img/profile.jpeg"),
          ),
        ),
      ),
      body: state.when(
        initial: () => Container(),
        loading: () => const Center(child: CircularProgressIndicator()),
        success: (portfolioCoins, balance) => Column(
          children: [
            FadeAnimation(
              delay: 1,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 0.05.sh),
                    Text(
                      "Balance total",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      "\$${balance.toStringAsFixed(2)}",
                      style: Theme.of(context).textTheme.headline2!.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    SizedBox(height: 0.1.sh),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Portafolio",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: portfolioCoins.length,
                          itemBuilder: (context, index) {
                            return TrasladeFadeAnimation(
                              delay:
                                  ((1.0 + index) / (portfolioCoins.length / 2)),
                              child: CryptoActiveItem(
                                coin: portfolioCoins[index],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        failure: (errorMsg) => ErrorState(
          errorMsg: "Ups!\n$errorMsg",
        ),
      ),
    );
  }
}
