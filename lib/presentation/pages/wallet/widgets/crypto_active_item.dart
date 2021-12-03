import 'package:crypto_belo/domain/coin/coin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CryptoActiveItem extends StatelessWidget {
  final Coin coin;

  const CryptoActiveItem({
    Key? key,
    required this.coin,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(coin.image, width: 70.w,
              loadingBuilder: (context, child, loading) {
            if (loading == null) {
              return child;
            }
            return Container(
              height: 70.w,
              width: 70.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).backgroundColor,
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
                "\$${coin.valueInUsd!.toStringAsFixed(2)}",
                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                "${coin.balance} ${coin.symbol.toUpperCase()}",
                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
