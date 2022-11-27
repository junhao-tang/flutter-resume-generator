import 'package:flutter/material.dart';

class PrefixTextWidget extends StatelessWidget {
  final String text;
  final String prefix;
  final String? fontFamily;

  const PrefixTextWidget({
    required this.text,
    this.prefix = "",
    this.fontFamily,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          " $prefix ",
          style: TextStyle(fontFamily: fontFamily),
        ),
        Expanded(child: Text(text)),
      ],
    );
  }
}
