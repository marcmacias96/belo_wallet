import 'package:crypto_belo/core/validators/validator.dart';
import 'package:crypto_belo/domain/coin/coin.dart';
import 'package:crypto_belo/presentation/pages/convert/widgets/coin_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class ConvertInput extends StatelessWidget {
  final TextEditingController editingController;
  final bool isFrom;
  final Coin? coin;
  final Function onSelected;
  final List<Coin> coins;
  final Coin selectedCoin;
  final bool isLoading;
  const ConvertInput({
    Key? key,
    this.isFrom = true,
    this.coin,
    required this.onSelected,
    required this.coins,
    required this.selectedCoin,
    required this.editingController,
    required this.isLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget getCoinSelector({required Coin coin, required bool isLoading}) {
      return coin != Coin.empty()
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    coin.image,
                    height: 30,
                    width: 30,
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  coin.symbol.toUpperCase(),
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                ),
                Visibility(
                  visible: !isLoading,
                  child: const Icon(Icons.arrow_drop_down),
                ),
                const VerticalDivider(
                  color: Colors.black,
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/img/splash.png",
                    height: 30,
                    width: 30,
                  ),
                ),
                Text(
                  "--",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                ),
                Visibility(
                  visible: !isLoading,
                  child: const Icon(Icons.arrow_drop_down),
                ),
                const VerticalDivider(
                  color: Colors.black,
                )
              ],
            );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          isFrom ? "De" : "Para",
          style: Theme.of(context).textTheme.headline4!.copyWith(
                fontWeight: FontWeight.w400,
              ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            vertical: 5.0,
          ),
          child: TextFormField(
            controller: editingController,
            style: Theme.of(context).textTheme.headline4,
            validator: (value) => !isFrom || coin == Coin.empty()
                ? null
                : Validator.validateBalance(
                    double.parse(value == "" ? "0" : value!),
                    coin!.balance!,
                  ).fold(
                    (f) => f.maybeMap(
                      insufficientBalance: (_) => "Saldo insuficiente",
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
            showCursor: false,
            decoration: InputDecoration(
              errorStyle: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: Colors.red),
              prefixIcon: SizedBox(
                width: 0.34.sw,
                child: InkWell(
                  onTap: () async {
                    var coin = await showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (context) {
                        return CoinList(
                          coinList: coins,
                          selectedCoin: selectedCoin,
                        );
                      },
                    );
                    if (coin != null) {
                      onSelected(coin);
                    }
                  },
                  child: getCoinSelector(
                    coin: coin!,
                    isLoading: isLoading,
                  ),
                ),
              ),
              border: const OutlineInputBorder(),
            ),
          ),
        ),
        Visibility(
          visible: isFrom,
          child: Text(
            "Disponible: ${coin!.balance ?? "--"} ${coin!.symbol.toUpperCase()}",
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.w400,
                ),
          ),
        ),
      ],
    );
  }
}
