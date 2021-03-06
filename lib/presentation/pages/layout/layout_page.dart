import 'package:crypto_belo/aplication/layout/layout_provider.dart';
import 'package:crypto_belo/presentation/pages/crypto_currency/crypto_currency_page.dart';
import 'package:crypto_belo/presentation/pages/wallet/wallet_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'widgets/button_navigation_bar.dart';

class LayoutPage extends ConsumerWidget {
  const LayoutPage({Key? key}) : super(key: key);
  static const List<Widget> pages = [
    CryptoCurrencyPage(),
    WalletPage(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(layoutNotifierProvider);
    return Scaffold(
      body: IndexedStack(
        index: state.index,
        children: pages,
      ),
      bottomNavigationBar: BottonNavigationBar(
        onTap: (index) {
          ref.read(layoutNotifierProvider.notifier).setIndex(index);
        },
      ),
    );
  }
}
