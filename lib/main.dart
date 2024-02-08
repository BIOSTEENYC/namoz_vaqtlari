import 'package:flutter/material.dart';
import 'package:namoz_vaqtlari/utils/constants.dart';
import 'package:namoz_vaqtlari/views/home_view.dart';
import 'package:namoz_vaqtlari/views/no_internet_page.dart';
import 'package:connectivity/connectivity.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.APP_TITLE,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FutureBuilder<ConnectivityResult>(
        future: Connectivity().checkConnectivity(),
        builder: (BuildContext context, AsyncSnapshot<ConnectivityResult> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator(color: Colors.green,);
          } else if (snapshot.data == ConnectivityResult.none) {
            return NoInternetPage();
          } else {
            return SafeArea(child: HomeView());
          }
        },
      ),
    );
  }
}
