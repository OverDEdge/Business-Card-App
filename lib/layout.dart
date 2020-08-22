import 'package:flutter/material.dart';

import './contactinfo.dart';

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const contactStyling = {
      'iconSpacing': 20.0,
      'textSpacing': 2.0,
      'fontSizes': [25.0, 22.0, 20.0, 18.0, 15.0, 13.0, 10.0],
      'iconSize': 25.0,
      'vertMargin': 10.0,
      'horizMargin': 20.0,
      'vertPadding': 5.0,
      'horizPadding': 10.0,
      'contactCardHeight': 50.0,
    };

    const double _nameFontSize = 48,
        _jobFontSize = 16,
        _jobSpacing = 2.0,
        _jobPhoneSpacing = 40.0,
        _circleImageRadius = 100,
        _iconNameSpacing = 10.0;

    const String phoneNumber = '+00 123 456 789',
        emailAddress = 'john.doe@company.com';

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: _circleImageRadius + 5.0,
          backgroundColor: Colors.lime,
          child: CircleAvatar(
            radius: _circleImageRadius,
            backgroundImage: AssetImage('imgs/Profile2.jpg'),
          ),
        ),
        SizedBox(
          height: _iconNameSpacing,
        ),
        Text(
          'John Doe',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Satisfy',
            fontSize: _nameFontSize,
            color: Colors.white,
          ),
        ),
        Text(
          'SOFTWARE DEVELOPER',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Orbitron',
            fontSize: _jobFontSize,
            fontWeight: FontWeight.bold,
            letterSpacing: _jobSpacing,
            color: Colors.teal[100],
          ),
        ),
        SizedBox(
          height: _jobPhoneSpacing,
          child: Divider(
            color: Colors.teal[100],
          ),
        ),
        ContactInfo(
          Icon(
            Icons.phone,
            size: contactStyling['iconSize'],
            color: Colors.teal[900],
          ),
          phoneNumber,
          contactStyling,
        ),
        ContactInfo(
          Icon(
            Icons.email,
            size: contactStyling['iconSize'],
            color: Colors.teal[900],
          ),
          emailAddress,
          contactStyling,
        ),
      ],
    );
  }
}
