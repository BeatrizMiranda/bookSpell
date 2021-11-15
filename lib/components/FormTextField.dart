import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  FormTextField({
    Key? key,
    required this.icon,
    required this.label,
    required this.validator,
  }) : super(key: key);

  final String label;
  final FormFieldValidator<String> validator;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: label,
          suffixIcon: Icon(icon, size: 20),
          isDense: true,
          contentPadding: EdgeInsets.only(left: 8, top: 18),
        ),
        validator: validator,
      ),
    );
  }
}
