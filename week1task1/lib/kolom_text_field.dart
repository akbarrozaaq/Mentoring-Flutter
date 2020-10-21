import 'package:flutter/material.dart';

class KolomTextField extends StatelessWidget {
  final String label;

  const KolomTextField({Key key, this.label}) : super(key: key);
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
          decoration: InputDecoration(
            labelText: label,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderSide: BorderSide(),
            ),
          ),
        ),
      ),
    );
  }
}
