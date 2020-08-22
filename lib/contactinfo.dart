import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ContactInfo extends StatelessWidget {
  final Icon infoIcon;
  final String contactText;
  final Map styling;

  ContactInfo(this.infoIcon, this.contactText, this.styling);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: styling['contactCardHeight'],
      margin: EdgeInsets.symmetric(
        vertical: styling['vertMargin'],
        horizontal: styling['horizMargin'],
      ),
      padding: EdgeInsets.symmetric(
        vertical: styling['vertPadding'],
        horizontal: styling['horizPadding'],
      ),
      child: Row(
        children: <Widget>[
          infoIcon,
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.03,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.70,
            child: AutoSizeText(
              contactText,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'Teko',
                letterSpacing: styling['textSpacing'],
                color: Colors.teal[900],
              ),
              presetFontSizes: styling['fontSizes'],
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.teal[100],
        border: Border.all(color: Colors.black, width: 3),
        borderRadius: BorderRadius.all(Radius.circular(18)),
        boxShadow: const [
          BoxShadow(blurRadius: 10),
        ],
      ),
    );
  }
}
