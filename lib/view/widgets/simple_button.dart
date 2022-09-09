import 'package:flutter/material.dart';

class SimpleButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Color? backgroundColor;
  final Widget? child;
  
  const SimpleButton(
      {super.key, this.onTap, this.backgroundColor, this.child});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          onTap != null ? backgroundColor : Colors.grey,
        ),
      ),
      child: child,
    );
  }
}
