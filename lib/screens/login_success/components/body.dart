import 'package:e_shop/main.dart';
import 'package:flutter/material.dart';
import 'package:e_shop/components/default_button.dart';
import 'package:e_shop/ecommerce/screens/home/home_screen.dart';
//import 'package:social_app/feeds/Home.dart';
import 'package:e_shop/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4, //40%
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Login Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Back to home",
            press: () {
             // Navigator.pushNamed(context, SocialMedia.routeName);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage(title: 'Cloth City')),);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}
