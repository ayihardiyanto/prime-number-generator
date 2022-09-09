import 'package:flutter/material.dart';
import 'package:frisia_application/view/controller/home_controller.dart';
import 'package:frisia_application/view/screen/home.dart';
import 'package:frisia_application/view/themes/themes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        theme: basicTheme,
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => HomeController(),
            )
          ],
          child: const Home(),
        ),
      ),
    );
  }
}
