import 'package:flutter/material.dart';
import 'package:resume/types.dart';

import 'prefix_text.dart';

class InterestFieldsWidget extends StatelessWidget {
  final List<String> interestedFields;
  final InterestFieldsWidgetPreference pref;

  const InterestFieldsWidget(
      {required this.interestedFields,
      InterestFieldsWidgetPreference? pref,
      Key? key})
      : pref = pref ?? const InterestFieldsWidgetPreference(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: pref.padding.edgeInsets,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            pref.title,
            style: Theme.of(context).textTheme.headlineMedium,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: pref.spacingAfterTitle),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: interestedFields
                .map(
                  (e) => PrefixTextWidget(
                    text: e,
                    prefix: pref.bullet,
                    fontFamily: pref.bulletFontFamily,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
