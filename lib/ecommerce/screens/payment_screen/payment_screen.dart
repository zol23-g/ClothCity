import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  static String routeName = "/payment";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Payment'),
      ),
    );
  }
}
