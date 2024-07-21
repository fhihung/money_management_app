import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputDoneButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xFFE5E5EA),
      child: Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
          child: CupertinoButton(
            padding: EdgeInsets.only(right: 24.0, top: 8.0, bottom: 8.0),
            onPressed: () {
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            child: Text("Done", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}
