import 'package:flutter/material.dart';
import 'package:e_shop/components/default_button.dart';
import 'package:e_shop/constants.dart';
import 'package:e_shop/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                DefaultButton(
                  text: "Pay with Yene pay",
                  press: () {},
                ),
                SizedBox(height: getProportionateScreenHeight(30)),
                DefaultButton(
                  text: "Pay with Afri Pay",
                  press: () {},
                ),
                SizedBox(height: getProportionateScreenHeight(30)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
