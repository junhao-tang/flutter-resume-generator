import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:resume/types.dart';
import 'package:resume/widgets/prefix_text.dart';

class EducationsWidget extends StatelessWidget {
  final List<Education> educations;
  final EducationsWidgetPreference pref;

  const EducationsWidget(
      {required this.educations, EducationsWidgetPreference? pref, Key? key})
      : pref = pref ?? const EducationsWidgetPreference(),
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
          ...educations.map(
            (e) => _EducationsWidget(
              education: e,
              pref: pref,
            ),
          ),
        ],
      ),
    );
  }
}

class _EducationsWidget extends StatelessWidget {
  final Education education;
  final EducationsWidgetPreference pref;

  const _EducationsWidget(
      {required this.education, required this.pref, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: pref.spacingAfterEntry),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (education.logo != null)
            SizedBox(
              width: pref.logoSize,
              child: AspectRatio(
                aspectRatio: 1,
                child: CachedNetworkImage(
                  imageUrl: education.logo!,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          Text(
            education.name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(height: pref.spacingAfterName),
          Text(
            education.subject,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(education.duration),
          if (education.hons != null) Text(education.hons!),
          if (education.grade != null) Text(education.grade!),
          if (education.achievements != null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: education.achievements!
                  .map((e) => PrefixTextWidget(
                        text: e,
                        prefix: pref.bullet,
                        fontFamily: pref.bulletFontFamily,
                      ))
                  .toList(),
            ),
        ],
      ),
    );
  }
}
