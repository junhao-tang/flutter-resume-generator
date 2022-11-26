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
    return Text(
      "$prefix $text",
      style: TextStyle(fontFamily: fontFamily),
      overflow: TextOverflow.ellipsis,
    );
  }
}
