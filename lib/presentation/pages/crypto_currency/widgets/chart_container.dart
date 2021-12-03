import 'package:crypto_belo/aplication/crypto_currency/coin_chart/coin_chart_provider.dart';
import 'package:crypto_belo/presentation/core/animations/traslade_fade_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import 'coin_line_chart.dart';

class ChartContainer extends ConsumerWidget {
  const ChartContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(builder: (context, ref, child) {
      final state = ref.watch(coinChartProvider);
      return Container(
        height: 0.32.sh,
        margin: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: state.coin.image == ""
            ? TrasladeFadeAnimation(
                delay: 1,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "Seleccione una moneda",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Lottie.asset(
                        state.hasErrors
                            ? "assets/animations/error.json"
                            : "assets/animations/void_chart.json",
                        height: 0.29.sh,
                      ),
                    ],
                  ),
                ),
              )
            : Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(state.coin.image, width: 70.w,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "${state.coin.name} - ",
                            style:
                                Theme.of(context).textTheme.headline4!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          Text(
                            state.coin.symbol.toUpperCase(),
                            style:
                                Theme.of(context).textTheme.headline4!.copyWith(
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
                            "\$${state.coin.currentPrice}",
                            textAlign: TextAlign.end,
                            style:
                                Theme.of(context).textTheme.headline4!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          Text(
                            state.coin.priceChange.toStringAsFixed(2),
                            textAlign: TextAlign.end,
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: state.coin.priceChange >= 0
                                          ? Colors.green
                                          : Colors.redAccent,
                                    ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  if (state.isLoading)
                    SizedBox(
                        height: 0.25.sh,
                        child:
                            const Center(child: CircularProgressIndicator())),
                  if (state.hasErrors)
                    Container(
                      height: 0.25.sh,
                      color: Colors.red,
                    ),
                  if (!state.isLoading)
                    LineChartSample2(
                      chartData: state.chart,
                      min: state.min.toDouble(),
                    ),
                ],
              ),
      );
    });
  }
}
