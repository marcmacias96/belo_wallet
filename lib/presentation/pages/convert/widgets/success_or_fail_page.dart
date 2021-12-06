import 'package:crypto_belo/aplication/convert_coin/convert_coin_provider.dart';
import 'package:crypto_belo/presentation/core/actions/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';
import 'package:lottie/lottie.dart';

class SuccessOrFailPage extends ConsumerWidget {
  const SuccessOrFailPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(convertCoinNotifierProvider);

    return Scaffold(
        body: Center(
            child: ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 600),
      child: state.convertFailureOrSuccessOption.fold(
        () => SizedBox(
            height: 300.h,
            width: 300.h,
            child: Lottie.asset(
              'assets/animations/loading.json',
            )),
        (either) => either.fold(
          (failure) =>
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 250.h,
                      width: 250.h,
                      child: Lottie.asset('assets/animations/error.json',
                          repeat: false)),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Upss, vuelve a intentarlo',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 42.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    failure.maybeMap(
                      unexpected: (_) => 'Ups! Ocurrio un error inesperdo',
                      orElse: () => 'Ha ocurrido un error inesperado',
                    ),
                    style: TextStyle(color: Colors.black87, fontSize: 36.sp),
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                ],
              ),
            ),
            PrimaryButton(
              height: 80.h,
              text: 'Reintentar',
              onTap: () => context.router.pop(),
              hasIcon: false,
              fontSize: 25,
            ),
            SizedBox(
              height: 20.h + (ScreenUtil().bottomBarHeight / 2),
            )
          ]),
          (r) => Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: 400.h,
                          width: 400.h,
                          child: Lottie.asset(
                            'assets/animations/done.json',
                          )),
                      Text(
                        'Conversión completada con exito',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 42.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Así de simple, así de Belo',
                        style:
                            TextStyle(color: Colors.black87, fontSize: 36.sp),
                      ),
                    ],
                  ),
                ),
                PrimaryButton(
                  height: 80.h,
                  text: 'Aceptar',
                  onTap: () {
                    context.router.popUntil((route) => route.isFirst);
                  },
                  hasIcon: false,
                  fontSize: 25,
                ),
                SizedBox(
                  height: 20.h + (ScreenUtil().bottomBarHeight / 2),
                )
              ]),
        ),
      ),
    )));
  }
}
