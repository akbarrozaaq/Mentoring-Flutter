import 'package:flutter/material.dart';

class KolomPasswordTextField extends StatelessWidget {
  final String label;
  final Function showPass;
  final bool obsecureText;

  const KolomPasswordTextField(
      {Key key, this.label, this.showPass, this.obsecureText})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        width: size.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(29),
        ),
        child: TextFormField(
          obscureText: obsecureText,
          decoration: InputDecoration(
            labelText: label,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderSide: BorderSide(),
            ),
            suffixIcon: IconButton(
              icon: Icon(Icons.visibility),
              onPressed: showPass,
            ),
          ),
        ),
      ),
    );
  }
}
