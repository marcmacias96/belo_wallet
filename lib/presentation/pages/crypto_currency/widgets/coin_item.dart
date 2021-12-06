import 'package:crypto_belo/domain/coin/coin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoinItem extends StatelessWidget {
  final Coin coin;
  final VoidCallback onTap;
  const CoinItem({
    Key? key,
    required this.coin,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 100.h,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(coin.image, width: 70.w,
                loadingBuilder: (context, child, loading) {
              if (loading == null) {
                return child;
              }
              return Container(
                height: 70.w,
                width: 70.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
              );
            }),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coin.symbol.toUpperCase(),
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  coin.name,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "\$${coin.currentPrice}",
                  textAlign: TextAlign.end,
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  coin.priceChange.toStringAsFixed(2),
                  textAlign: TextAlign.end,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: coin.priceChange >= 0
                          ? Colors.green
                          : Colors.redAccent),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
