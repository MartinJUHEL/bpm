import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton(
      {super.key, this.isEnabled = true, this.isLoading = false, this.title = "", required this.onPressed});

  final String title;
  final bool isLoading;
  final bool isEnabled;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnimatedSize(
      duration: const Duration(milliseconds: 500),
      child: SizedBox(
        width: isLoading ? loaderSize : size.width * 0.8,
        child: OutlinedButton(
          onPressed: isEnabled ? () => onPressed() : null,
          child: isLoading ? const CircularProgressIndicator() : Text(title),
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////
// CONSTANTS
///////////////////////////////////////////////////////////////////////////

const double loaderSize = 10.0;
