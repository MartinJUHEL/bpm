import 'package:assoshare/app/dimens.dart';
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
        width: isLoading ? buttonWidth : size.width * 0.8,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: isLoading ? Size(size.width * 0.8, buttonHeight) : Size(size.width * 0.8, buttonHeight),
              padding: isLoading
                  ? const EdgeInsets.symmetric(vertical: Dimens.paddingTiny, horizontal: Dimens.paddingSmaller)
                  : const EdgeInsets.symmetric(vertical: Dimens.paddingTiny, horizontal: 0)),
          onPressed: isEnabled ? () => onPressed() : null,
          child: isLoading
              ? const SizedBox(height: buttonHeight, width: buttonWidth, child: CircularProgressIndicator())
              : Text(title),
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////
// CONSTANTS
///////////////////////////////////////////////////////////////////////////

const double buttonHeight = 40.0;
const double buttonWidth = 40.0;
