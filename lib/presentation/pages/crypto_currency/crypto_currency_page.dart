import 'package:crypto_belo/presentation/pages/crypto_currency/widgets/chart_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/coins_container.dart';

class CryptoCurrencyPage extends StatelessWidget {
  const CryptoCurrencyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top: ScreenUtil().statusBarHeight,
        ),
        child: Column(
          children: const [
            ChartContainer(),
            CoinsCointainer(),
          ],
        ),
      ),
    );
  }
}
