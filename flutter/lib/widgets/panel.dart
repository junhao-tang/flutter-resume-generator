import 'package:flutter/material.dart';
import 'package:resume/types.dart';

class Panel extends StatelessWidget {
  final PanelPreference pref;
  final List<Widget> children;

  const Panel({
    Key? key,
    required this.pref,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: pref.flex,
      child: Container(
        padding: pref.padding.edgeInsets,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(pref.backgroundUrl),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
      ),
    );
  }
}
