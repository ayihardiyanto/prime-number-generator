import 'package:flutter/material.dart';
import 'package:frisia_application/view/common/constants/strings.dart';
import 'package:frisia_application/view/controller/home_controller.dart';
import 'package:frisia_application/view/controller/prime_number_controller.dart';
import 'package:frisia_application/view/screen/prime_number.dart';
import 'package:frisia_application/view/screen/profile.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Consumer<HomeController>(builder: (context, controller, child) {
      return Scaffold(
        appBar: AppBar(title: Text(Strings.general.appBarTitle)),
        body: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => PrimeNumberController())
          ],
          child: PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              PrimeNumber(),
              Profile(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            controller.updateScreenIndex = value;
            pageController.animateToPage(
              value,
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastLinearToSlowEaseIn,
            );
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
