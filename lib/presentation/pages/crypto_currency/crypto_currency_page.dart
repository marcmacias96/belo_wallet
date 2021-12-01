import 'package:flutter/material.dart';

import 'widgets/coins_container.dart';

class CryptoCurrencyPage extends StatelessWidget {
  const CryptoCurrencyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: const [
          CoinsCointainer(),
        ],
      ),
    );
  }
}
