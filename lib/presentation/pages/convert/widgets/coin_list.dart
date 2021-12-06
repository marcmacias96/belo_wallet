import 'package:crypto_belo/domain/coin/coin.dart';
import 'package:crypto_belo/presentation/core/animations/traslade_fade_animation.dart';
import 'package:crypto_belo/presentation/pages/convert/widgets/simple_coin_item.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CoinList extends ConsumerWidget {
  final List<Coin> coinList;
  final Coin selectedCoin;
  const CoinList({Key? key, required this.coinList, required this.selectedCoin})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Seleccione una moneda",
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: coinList.length,
                itemBuilder: (context, index) {
                  return TrasladeFadeAnimation(
                    delay: ((1.0 + index) / (coinList.length / 2)),
                    child: InkWell(
                      onTap: () => context.router.pop(coinList[index]),
                      child: SimpleCoinItem(
                        coin: coinList[index],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
