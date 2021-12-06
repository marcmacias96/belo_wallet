import 'package:crypto_belo/domain/coin/coin.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class SimpleCoinItem extends StatelessWidget {
  final Coin coin;
  const SimpleCoinItem({
    Key? key,
    required this.coin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Image.network(
            coin.image,
            width: 70.w,
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
            },
          ),
          const SizedBox(width: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                coin.symbol.toUpperCase(),
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                " - ${coin.name}",
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.w300,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
