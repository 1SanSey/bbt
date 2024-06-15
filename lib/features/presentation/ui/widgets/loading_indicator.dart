import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Center(
        child: SpinKitDualRing(
          color: Theme.of(context).primaryColor,
          size: 60,
          duration: const Duration(milliseconds: 400),
        ),
      ),
    );
  }
}
