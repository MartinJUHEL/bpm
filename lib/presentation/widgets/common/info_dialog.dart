import 'package:assoshare/app/dimens.dart';
import 'package:flutter/material.dart';

class InfoDialog extends StatelessWidget {
  const InfoDialog(
      {super.key,
      required this.title,
      required this.descriptions,
      required this.text,
      this.img});

  final String title, descriptions, text;
  final Image? img;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildContentBox(context),
    );
  }

  _buildContentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(
              left: Dimens.paddingSmall,
              top: Dimens.avatarRadius + Dimens.paddingSmall,
              right: Dimens.paddingSmall,
              bottom: Dimens.paddingSmall),
          margin: const EdgeInsets.only(top: Dimens.avatarRadius),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(Dimens.paddingSmall),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                title,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                descriptions,
                style: const TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 22,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      text,
                      style: const TextStyle(fontSize: 18),
                    )),
              ),
            ],
          ),
        ),
        img != null
            ? Positioned(
                left: Dimens.paddingSmall,
                right: Dimens.paddingSmall,
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: Dimens.avatarRadius,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                          Radius.circular(Dimens.avatarRadius)),
                      child: img),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
