import 'package:flutter/material.dart';
import 'package:frisia_application/view/common/constants/strings.dart';
import 'package:frisia_application/view/controller/home_controller.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(builder: (context, controller, child) {
      return Scaffold(
        appBar: AppBar(title:  Text(Strings.general.appBarTitle)),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            controller.updateScreenIndex = value;
          },
          currentIndex: controller.screenIndex,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.numbers),
              label: Strings.primeNumber.bottomNavigationBarTitle,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.account_box_rounded),
              label: Strings.profile.bottomNavigationBarTitle,
            ),
          ],
        ),
      );
    });
  }
}
