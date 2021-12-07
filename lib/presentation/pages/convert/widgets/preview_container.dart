import 'package:crypto_belo/aplication/convert_coin/convert_coin_provider.dart';
import 'package:crypto_belo/presentation/core/actions/primary_button.dart';
import 'package:crypto_belo/presentation/pages/convert/widgets/success_or_fail_page.dart';
import 'package:crypto_belo/presentation/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PreviewContainer extends ConsumerWidget {
  const PreviewContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(convertCoinNotifierProvider);
    final notifier = ref.read(convertCoinNotifierProvider.notifier);
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      height: state.invalidConversion ? 0.25.sh : 0.37.sh,
      child: state.invalidConversion
          ? Column(
              children: [
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  title: Text(
                    "Ups! Lo siento",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          fontSize: 35.sp,
                        ),
                  ),
                  actions: [
                    IconButton(
                        onPressed: () => context.router.pop(),
                        icon: const Icon(
                          Icons.close,
                          color: Colors.black,
                        ))
                  ],
                ),
                Icon(
                  Icons.error_outline,
                  color: Colors.red,
                  size: 130.sp,
                ),
                const SizedBox(height: 10),
                const Text("Tu Saldo es insuficiente")
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  title: Text(
                    "Confirmar conversión",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          fontSize: 35.sp,
                        ),
                  ),
                  actions: [
                    IconButton(
                        onPressed: () => context.router.pop(),
                        icon: const Icon(
                          Icons.close,
                          color: Colors.black,
                        ))
                  ],
                ),
                Text(
                  "Cantidad final",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  "${state.previewModel!.total.toStringAsFixed(6)} ${state.to.symbol.toUpperCase()}",
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(height: 30.h),
                Container(
                  width: 0.8.sw,
                  padding: const EdgeInsets.all(15),
                  height: 0.10.sh,
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Convertir",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 30.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                          ),
                          Text(
                            "${state.previewModel!.amount.toString()} ${state.from.symbol.toUpperCase()}",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 30.sp,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                    ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Tasa",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 30.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                          ),
                          Text(
                            "1 ${state.from.symbol.toUpperCase()} = ${state.previewModel!.rate.toStringAsFixed(6)} ${state.to.symbol.toUpperCase()}",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 30.sp,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                    ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                PrimaryButton(
                  height: 80.h,
                  text: 'Convertir',
                  onTap: () {
                    notifier.convert();
                    context.router.push(const SuccessOrFailRoute());
                  },
                  hasIcon: false,
                  fontSize: 25,
                )
              ],
            ),
    );
  }
}
