import 'package:crypto_belo/aplication/convert_coin/convert_coin_provider.dart';
import 'package:crypto_belo/domain/coin/coin.dart';
import 'package:crypto_belo/presentation/core/actions/primary_button.dart';
import 'package:crypto_belo/presentation/pages/convert/widgets/preview_container.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_virtual_keyboard/virtual_keyboard.dart';

import 'widgets/convert_input.dart';

class ConvertPage extends ConsumerWidget {
  const ConvertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(convertCoinNotifierProvider);
    final notifier = ref.read(convertCoinNotifierProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        title: Text(
          "Convertir",
          style: Theme.of(context).textTheme.bodyText2,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.close,
              color: Colors.black,
            ),
            onPressed: () => context.router.pop(),
          )
        ],
        backgroundColor: Colors.transparent,
      ),
      body: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          child: Column(
            children: [
              Focus(
                child: ConvertInput(
                  isLoading: state.isLoading,
                  editingController: state.fromController,
                  coin: state.from,
                  onSelected: (from) => notifier.setFrom(from),
                  coins: state.portfolio,
                  selectedCoin: state.to,
                ),
                onFocusChange: (isFocus) {
                  notifier.changeFocus(isFocus);
                },
              ),
              SizedBox(height: 50.h),
              ConvertInput(
                isLoading: state.isLoading,
                editingController: state.toController,
                isFrom: false,
                coin: state.to,
                onSelected: (to) => notifier.setTo(to),
                coins: state.allCoins,
                selectedCoin: state.from,
              ),
              const Spacer(),
              VirtualKeyboard(
                textColor: Colors.black,
                fontSize: 20,
                type: VirtualKeyboardType.Numeric,
                // Callback for key press event
                onKeyPress: (VirtualKeyboardKey value) {
                  if (value.keyType != VirtualKeyboardKeyType.Action) {
                    notifier.setAmount(value.text!);
                  } else {
                    notifier.removeAmount();
                  }
                },
              ),
              PrimaryButton(
                isActive: notifier.canConvert(),
                text: 'Vista previa de conversion',
                onTap: () {
                  notifier.previewConvert();
                  showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (context) {
                        return const PreviewContainer();
                      });
                },
                hasIcon: true,
                fontSize: 18,
              )
            ],
          ),
        ),
      ),
    );
  }
}
