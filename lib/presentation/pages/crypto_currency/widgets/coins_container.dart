import 'package:crypto_belo/aplication/crypto_currency/coin_chart/coin_chart_provider.dart';
import 'package:crypto_belo/aplication/crypto_currency/coin_list/coin_list_provider.dart';
import 'package:crypto_belo/presentation/core/animations/traslade_fade_animation.dart';
import 'package:crypto_belo/presentation/pages/crypto_currency/widgets/coin_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoinsCointainer extends StatelessWidget {
  const CoinsCointainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Monedas",
              style: Theme.of(context).textTheme.bodyText2,
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 0.45.sh,
              child: Consumer(
                builder: (context, ref, child) {
                  final state = ref.watch(coinListProvider);
                  return state.map(
                      initial: (_) => Container(),
                      loading: (_) =>
                          const Center(child: CircularProgressIndicator()),
                      success: (success) => ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: success.coins.length,
                          itemBuilder: (context, index) {
                            return TrasladeFadeAnimation(
                              delay:
                                  ((1.0 + index) / (success.coins.length / 2)),
                              child: CoinItem(
                                coin: success.coins[index],
                                onTap: () {
                                  ref
                                      .watch(coinChartProvider.notifier)
                                      .getChart(success.coins[index]);
                                },
                              ),
                            );
                          }),
                      failure: (failure) =>
                          onFailure("Ups!\n${failure.failure}"));
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget onFailure(String message) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.error_outline,
          color: Colors.red,
        ),
        Text(message),
      ],
    );
  }
}
