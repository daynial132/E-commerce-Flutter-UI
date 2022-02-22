import 'package:flutter/material.dart';
import 'package:shop_app/components/socal_card.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

import 'sign_up_form.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  bool isProcess = false;

  @override
  Widget build(BuildContext context) {
    return signupBody(context);
  }

  _updateMyState(bool state) {
    setState(() {
      isProcess = state;
    });
  }

  Widget signupBody(BuildContext context) {
    return isProcess
        ? Center(child: CircularProgressIndicator())
        : SafeArea(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: SizeConfig.screenHeight * 0.04), // 4%
                      Text("Register Account", style: headingStyle),
                      Text(
                        "Complete your details or continue \nwith social media",
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: SizeConfig.screenHeight * 0.08),
                      SignUpForm(
                          isMyProcess: false, parentAction: _updateMyState),
                      SizedBox(height: SizeConfig.screenHeight * 0.08),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocalCard(
                            icon: "assets/icons/google-icon.svg",
                            press: () {},
                          ),
                          SocalCard(
                            icon: "assets/icons/facebook-2.svg",
                            press: () {},
                          ),
                          SocalCard(
                            icon: "assets/icons/twitter.svg",
                            press: () {},
                          ),
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(20)),
                      Text(
                        'By continuing your confirm that you agree \nwith our Term and Condition',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.caption,
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
