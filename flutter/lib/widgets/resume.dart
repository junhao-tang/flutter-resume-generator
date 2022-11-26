import 'package:flutter/material.dart';
import 'package:resume/types.dart';
import 'package:resume/widgets/panel.dart';

import 'divider.dart';
import 'educations.dart';
import 'header.dart';
import 'working_experience.dart';
import 'basic_infos.dart';
import 'interest_fields.dart';

class ResumeWidget extends StatelessWidget {
  final Resume resume;
  final Preference pref;

  const ResumeWidget({required this.resume, required this.pref, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final left = Panel(
      pref: pref.leftPanelPref,
      children: [
        BasicInfosWidget(
          infos: resume.basicInfos,
          pref: pref.basicInfosWidgetPreference,
        ),
        DividerWidget(
          pref: pref.dividerWidgetPreference,
        ),
        InterestFieldsWidget(
          interestedFields: resume.interestedFields,
          pref: pref.interestFieldsWidgetPreference,
        ),
        DividerWidget(
          pref: pref.dividerWidgetPreference,
        ),
        EducationsWidget(
          educations: resume.educations,
          pref: pref.educationsWidgetPreference,
        ),
      ],
    );

    final right = Panel(
      pref: pref.rightPanelPref,
      children: [
        HeaderWidget(
          imageUrl: resume.imageUrl,
          name: resume.name,
          introduction: resume.introduction,
          pref: pref.headerWidgetPreference,
        ),
        DividerWidget(
          pref: pref.dividerWidgetPreference,
        ),
        WorkingExperiencesWidget(
          workingExperiences: resume.workingExperiences,
          pref: pref.workingExperiencesWidgetPreference,
        ),
      ],
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        left,
        right,
      ],
    );
  }
}
