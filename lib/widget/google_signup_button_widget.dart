import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:donence_app/provider/google_sign_in.dart';
import 'package:provider/provider.dart';

class GoogleSignupButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
    padding: EdgeInsets.all(4),
    child: OutlinedButton.icon(
      label: Text(
        '< Sign In With Google >',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<OutlinedBorder>(
          StadiumBorder(),
        ),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        ),
        side: MaterialStateProperty.all<BorderSide>(
          BorderSide(color: Colors.black),
        ),
      ),
      icon: FaIcon(FontAwesomeIcons.google, color: Colors.purple[900]),
      onPressed: () {
        final provider =
        Provider.of<GoogleSignInProvider>(context, listen: false);
        provider.login();
      },
    ),
  );
}