import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  final String? errorMessage;
  final VoidCallback onPressed;

  const ErrorDialog(
      {Key? key, required this.errorMessage, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Error"),
      content: Text(errorMessage!),
      actions: [
        TextButton(child: const Text("Ok"), onPressed: () => onPressed())
      ],
    );
  }
}
