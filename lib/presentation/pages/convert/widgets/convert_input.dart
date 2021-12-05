import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class ConvertInput extends StatelessWidget {
  final bool isFrom;
  const ConvertInput({
    Key? key,
    this.isFrom = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          margin: const EdgeInsets.symmetric(vertical: 5.0),
          child: TextDropdownFormField(
            options: const ["Male", "Female"],
            decoration: InputDecoration(
              prefixIcon: SizedBox(
                width: 0.28.sw,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/img/splash.png",
                      height: 40,
                      width: 40,
                    ),
                    Text(
                      "BTC",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    const Icon(Icons.arrow_drop_down)
                  ],
                ),
              ),
              border: const OutlineInputBorder(),
            ),
            dropdownHeight: 120,
          ),
        ),
        Visibility(
          visible: isFrom,
          child: Text(
            "Disponible: 0.083839",
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.w400,
                ),
          ),
        ),
      ],
    );
  }
}
