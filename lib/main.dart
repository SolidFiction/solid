import 'package:flutter/material.dart';
import 'package:solid/page/home.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = "pk_live_51JfThCE09k3ncPVAoV5c9fiQNyPnBHG5rZceGTak6YwBVIbXuDRPazlWTQBwkkWaVgVAQ0N2Ubz59TJU2uP69AqB00ZJbT6beK";
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }

}

