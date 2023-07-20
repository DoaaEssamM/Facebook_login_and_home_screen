import 'package:flutter/material.dart';

class InputField extends StatelessWidget{
  String text;
  InputField(this.text);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: (value){
        print(value);
      },
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(247,247,247, 0.8)),
        ),
        hintText: text,
        hintStyle: TextStyle(color: Color.fromRGBO(247,247,247, 0.8)),
      ),
    );
  }
}