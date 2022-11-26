import 'package:flutter/material.dart';
import 'package:resume/types.dart';

import 'prefix_text.dart';

class WorkingExperiencesWidget extends StatelessWidget {
  final List<WorkingExperience> workingExperiences;
  final WorkingExperiencesWidgetPreference pref;

  const WorkingExperiencesWidget(
      {required this.workingExperiences,
      WorkingExperiencesWidgetPreference? pref,
      Key? key})
      : pref = pref ?? const WorkingExperiencesWidgetPreference(),
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
          ),
          SizedBox(height: pref.spacingAfterTitle),
          ...workingExperiences.map(
            (e) => _WorkingExperienceWidget(
              workingExperience: e,
              pref: pref,
            ),
          ),
        ],
      ),
    );
  }
}

class _WorkingExperienceWidget extends StatelessWidget {
  final WorkingExperience workingExperience;
  final WorkingExperiencesWidgetPreference pref;

  const _WorkingExperienceWidget(
      {required this.workingExperience, required this.pref, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: pref.spacingAfterEntry),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  workingExperience.companyName,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Row(
                children: [
                  Text(
                    workingExperience.jobTitle,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    pref.textBetweenRoleAndDuration,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    workingExperience.duration,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: pref.spacingAfterEntryHeader),
          Text(
            workingExperience.description,
          ),
          if (workingExperience.acheivements != null)
            _SubcategoryWidget(
              pref: pref,
              title: pref.titleAchievements,
              items: workingExperience.acheivements!,
            ),
          if (workingExperience.relevantSkills != null)
            _SubcategoryWidget(
              pref: pref,
              title: pref.titleRelevantSkills,
              items: workingExperience.relevantSkills!,
            )
        ],
      ),
    );
  }
}

class _SubcategoryWidget extends StatelessWidget {
  final WorkingExperiencesWidgetPreference pref;
  final String title;
  final List<String> items;

  const _SubcategoryWidget({
    required this.title,
    required this.items,
    required this.pref,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: pref.spacingBeforeSubcategory),
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: pref.spacingAfterSubcategoryTitle),
        ...items.map(
          (e) => PrefixTextWidget(
            text: e,
            prefix: pref.bullet,
            fontFamily: pref.bulletFontFamily,
          ),
        ),
      ],
    );
  }
}
