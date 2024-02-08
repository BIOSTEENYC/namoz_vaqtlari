import 'package:flutter/material.dart';

class NoInternetPage extends StatelessWidget {
  const NoInternetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FittedBox(fit: BoxFit.contain,child: Text("Internet yo'q. Wifi yoki Mobile internetni yo'qing"),),
      ),
    );
  }
}
