import 'package:flutter/material.dart';
import 'package:frisia_application/view/common/constants/strings.dart';
import 'package:frisia_application/view/controller/prime_number_controller.dart';
import 'package:frisia_application/view/widgets/widgets.dart';
import 'package:provider/provider.dart';

class PrimeNumber extends StatefulWidget {
  const PrimeNumber({super.key});

  @override
  State<PrimeNumber> createState() => _PrimeNumberState();
}

class _PrimeNumberState extends State<PrimeNumber> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Strings.primeNumber.title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(Strings.primeNumber.description),
            const SizedBox(height: 24),
            _textFields,
            const SizedBox(height: 24),
            _generateButton,
            _resetButton,
            const SizedBox(height: 24),
            _primeList,
          ],
        ),
      ),
    );
  }

  Widget get _primeList => Container(
        width: double.infinity,
        constraints: const BoxConstraints(minHeight: 150),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Consumer<PrimeNumberController>(
          builder: (context, controller, child) {
            if (controller.primeNumbers.isEmpty) {
              return Text(Strings.primeNumber.emptyPrimeNumber);
            }
            return Stack(
              children: [
                Wrap(
                  children: controller.primeNumbers
                      .map(
                        (e) => Card(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(e.toString()),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            );
          },
        ),
      );

  Widget get _generateButton => Consumer<PrimeNumberController>(
        builder: (context, controller, child) {
          return SizedBox(
            width: double.infinity,
            child: SimpleButton(
              onTap: () {
                if (controller.endPoint < controller.startPoint) {
                  showFlashBar(
                    context,
                    message: Strings.primeNumber.lesserEndPointError,
                    isPositive: false,
                  );
                }
                controller.generatePrimeNumber();
              },
              child: Text(Strings.primeNumber.generateButtonTitle),
            ),
          );
        },
      );

  Widget get _resetButton => Consumer<PrimeNumberController>(
        builder: (context, controller, child) {
          return SizedBox(
            width: double.infinity,
            child: SimpleButton(
              backgroundColor: Colors.red,
              onTap: controller.primeNumbers.isEmpty
                  ? null
                  : () {
                      controller.clear();
                    },
              child: Text(Strings.primeNumber.clearButtonTitle),
            ),
          );
        },
      );

  Widget get _textFields => Consumer<PrimeNumberController>(
        builder: (context, controller, child) {
          return Row(
            children: [
              Expanded(
                flex: 3,
                child: NumberTextField(
                  label: Strings.primeNumber.startPoint,
                  onChanged: (value) {
                    controller.updateStartPoint = int.parse(value);
                  },
                ),
              ),
              const Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: NumberTextField(
                  label: Strings.primeNumber.endPoint,
                  onChanged: (value) {
                    controller.updateEndPoint = int.parse(value);
                  },
                ),
              ),
            ],
          );
        },
      );
}
