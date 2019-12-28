import 'package:flutter/material.dart';
import 'package:flutter_ui/style_guide.dart';
import 'package:flutter_ui/widgets/CustomButton.dart';
import 'package:flutter_ui/widgets/InputWidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(FontAwesomeIcons.arrowLeft),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(48, 40, 48, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.lock,
                        size: 50.0,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Forget Password?',
                        style: kHeadingStyle,
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Text(
                        kFPasswordHeadingText,
                        style: kBodyStyle,
                      ),
                      SizedBox(
                        height: 70.0,
                      ),
                      InputField(
                        labelTitle: 'E-mail',
                        trailingIcon: Icons.email,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                      TapButton(
                        onPressed: () {
                          // Todo 3: write code for send button pressed.
                        },
                        title: 'SEND',
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
