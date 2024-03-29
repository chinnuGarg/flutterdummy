import 'package:flutter/material.dart';
import 'package:flutter_app/helper/Constants.dart';


class Login extends StatelessWidget {
  final _pinCodeController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //----------for logo
    final logo = CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: bigRadius,
      child: appLogo,
    );
    //---------for edittext
    final pincode = TextFormField(
      controller: _pinCodeController,
      keyboardType: TextInputType.phone,
      maxLength: 4,
      maxLines: 1,
      autofocus: true,
      decoration: InputDecoration(
          hintText: pinCodeHintText,
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
          hintStyle: TextStyle(color: Colors.white)),
      style: TextStyle(
        color: Colors.white,
      ),
    );
    //----------for button
    final button = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        onPressed: () {},
        padding: EdgeInsets.all(12),
        color: appGreyColor,
        child: Text(loginButtonText, style: TextStyle(color: Colors.white)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
    );
    return Scaffold(
      backgroundColor: appDarkGreyColor,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: bigRadius),
            pincode,
            SizedBox(height: buttonHeight),
            button
          ],
        ),
      ),
    );
  }
}
