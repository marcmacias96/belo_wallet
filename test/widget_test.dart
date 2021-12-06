// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:crypto_belo/aplication/layout/layout_provider.dart';
import 'package:crypto_belo/main.dart';
import 'package:crypto_belo/presentation/core/actions/primary_button.dart';
import 'package:crypto_belo/presentation/core/animations/traslade_fade_animation.dart';
import 'package:crypto_belo/presentation/pages/app_widget.dart';
import 'package:crypto_belo/presentation/pages/welcome/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

class MyTestApp extends StatelessWidget {
  const MyTestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Consumer(builder: (context, ref, _) {
        final state = ref.watch(layoutNotifierProvider);
        return Scaffold(
          body: InkWell(
            onTap: () => ref.read(layoutNotifierProvider.notifier).setIndex(1),
            child: Text('${state.index}'),
          ),
        );
      }),
    );
  }
}

class MyTestApp2 extends StatelessWidget {
  const MyTestApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AppWidget(),
      ),
    );
  }
}

void main() {
  group("All tests", () {
    testWidgets('Riverpool Layout test', (WidgetTester tester) async {
      //Iniciamos nuestra app
      await tester.pumpWidget(const ProviderScope(child: MyTestApp()));

      //Verificmos que el index empieza en cero
      expect(find.text('0'), findsOneWidget);
      //Hacemos click en para cambiar el index
      await tester.tap(find.byType(InkWell));
      await tester.pump();
      expect(find.text('1'), findsOneWidget);
      expect(find.text('0'), findsNothing);
    });

    testWidgets('Widget welcome test', (WidgetTester tester) async {
      //Iniciamos nuestra app
      await tester.pumpWidget(const MyTestApp2());
      await tester.pump();
      //Verificamos que los textos iniciales exisitan
      expect(find.byType(Text), findsWidgets);
      //Verificamos que el boton de accion se visualize
      expect(find.text('Empezar'), findsOneWidget);
      //Verificamos que las imagenes se visualicen
      expect(find.byType(Image), findsWidgets);
    });
  });
}
