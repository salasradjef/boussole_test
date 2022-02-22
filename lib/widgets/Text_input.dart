import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController controller;
  final bool isPass;
  final String hint;
  final TextInputType txtInputType;

  const TextFieldInput({Key? key, required this.controller, this.isPass = false, required this.hint, required this.txtInputType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
        borderSide: Divider.createBorderSide(context)
    );

    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        border: inputBorder,
        focusedBorder:inputBorder,
        enabledBorder:inputBorder,
        filled: true,
        contentPadding: const EdgeInsets.all(8),

      ),
      keyboardType: txtInputType,
      obscureText: isPass,
    );
  }
}
