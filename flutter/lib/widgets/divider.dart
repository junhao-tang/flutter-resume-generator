import 'package:flutter/material.dart';
import 'package:resume/types.dart';

class DividerWidget extends StatelessWidget {
  final DividerWidgetPreference pref;

  const DividerWidget({Key? key, DividerWidgetPreference? pref})
      : pref = pref ?? const DividerWidgetPreference(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: pref.height,
      thickness: pref.thickness,
      color: pref.color,
    );
  }
}
