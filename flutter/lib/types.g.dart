// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasicInfo _$BasicInfoFromJson(Map<String, dynamic> json) => BasicInfo(
      type:
          $enumDecodeNullable(_$InfoTypeEnumMap, json['type']) ?? InfoType.text,
      data: json['data'] as String,
      alt: json['alt'] as String?,
      iconCodePoint: json['iconCodePoint'] as int?,
      iconImageUrl: json['iconImageUrl'] as String?,
      iconFamily: json['iconFamily'] as String? ?? "MaterialIcons",
    );

Map<String, dynamic> _$BasicInfoToJson(BasicInfo instance) => <String, dynamic>{
      'type': _$InfoTypeEnumMap[instance.type]!,
      'alt': instance.alt,
      'iconCodePoint': instance.iconCodePoint,
      'iconFamily': instance.iconFamily,
      'data': instance.data,
      'iconImageUrl': instance.iconImageUrl,
    };

const _$InfoTypeEnumMap = {
  InfoType.text: 'text',
  InfoType.email: 'email',
  InfoType.link: 'link',
};

WorkingExperience _$WorkingExperienceFromJson(Map<String, dynamic> json) =>
    WorkingExperience(
      companyName: json['companyName'] as String,
      jobTitle: json['jobTitle'] as String,
      duration: json['duration'] as String,
      description: json['description'] as String,
      relevantSkills: (json['relevantSkills'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      acheivements: (json['acheivements'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$WorkingExperienceToJson(WorkingExperience instance) =>
    <String, dynamic>{
      'companyName': instance.companyName,
      'jobTitle': instance.jobTitle,
      'duration': instance.duration,
      'description': instance.description,
      'relevantSkills': instance.relevantSkills,
      'acheivements': instance.acheivements,
    };

Education _$EducationFromJson(Map<String, dynamic> json) => Education(
      name: json['name'] as String,
      subject: json['subject'] as String,
      duration: json['duration'] as String,
      logo: json['logo'] as String?,
      grade: json['grade'] as String?,
      hons: json['hons'] as String?,
      achievements: (json['achievements'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$EducationToJson(Education instance) => <String, dynamic>{
      'name': instance.name,
      'subject': instance.subject,
      'duration': instance.duration,
      'logo': instance.logo,
      'grade': instance.grade,
      'hons': instance.hons,
      'achievements': instance.achievements,
    };

Resume _$ResumeFromJson(Map<String, dynamic> json) => Resume(
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String?,
      introduction: json['introduction'] as String?,
      basicInfos: (json['basicInfos'] as List<dynamic>)
          .map((e) => BasicInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      interestedFields: (json['interestedFields'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      workingExperiences: (json['workingExperiences'] as List<dynamic>)
          .map((e) => WorkingExperience.fromJson(e as Map<String, dynamic>))
          .toList(),
      educations: (json['educations'] as List<dynamic>)
          .map((e) => Education.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResumeToJson(Resume instance) => <String, dynamic>{
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'introduction': instance.introduction,
      'basicInfos': instance.basicInfos,
      'interestedFields': instance.interestedFields,
      'workingExperiences': instance.workingExperiences,
      'educations': instance.educations,
    };

PaddingBox _$PaddingBoxFromJson(Map<String, dynamic> json) => PaddingBox(
      top: (json['top'] as num?)?.toDouble() ?? 0,
      left: (json['left'] as num?)?.toDouble() ?? 0,
      right: (json['right'] as num?)?.toDouble() ?? 0,
      bottom: (json['bottom'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$PaddingBoxToJson(PaddingBox instance) =>
    <String, dynamic>{
      'top': instance.top,
      'bottom': instance.bottom,
      'left': instance.left,
      'right': instance.right,
    };

BasicInfosWidgetPreference _$BasicInfosWidgetPreferenceFromJson(
        Map<String, dynamic> json) =>
    BasicInfosWidgetPreference(
      spacingBetweenInfos:
          (json['spacingBetweenInfos'] as num?)?.toDouble() ?? 0,
      iconCellSize: (json['iconCellSize'] as num?)?.toDouble() ?? 0,
      spacingBetweenIconAndText:
          (json['spacingBetweenIconAndText'] as num?)?.toDouble() ?? 0,
      iconBorderRadius: (json['iconBorderRadius'] as num?)?.toDouble() ?? 0,
      iconSize: (json['iconSize'] as num?)?.toDouble() ?? 0,
      padding: json['padding'] == null
          ? const PaddingBox()
          : PaddingBox.fromJson(json['padding'] as Map<String, dynamic>),
      iconBackgroundColorString:
          json['iconBackgroundColorString'] as String? ?? "",
    );

Map<String, dynamic> _$BasicInfosWidgetPreferenceToJson(
        BasicInfosWidgetPreference instance) =>
    <String, dynamic>{
      'spacingBetweenInfos': instance.spacingBetweenInfos,
      'iconCellSize': instance.iconCellSize,
      'spacingBetweenIconAndText': instance.spacingBetweenIconAndText,
      'iconBorderRadius': instance.iconBorderRadius,
      'iconSize': instance.iconSize,
      'padding': instance.padding,
      'iconBackgroundColorString': instance.iconBackgroundColorString,
    };

EducationsWidgetPreference _$EducationsWidgetPreferenceFromJson(
        Map<String, dynamic> json) =>
    EducationsWidgetPreference(
      title: json['title'] as String? ?? "",
      spacingAfterTitle: (json['spacingAfterTitle'] as num?)?.toDouble() ?? 0,
      spacingAfterEntry: (json['spacingAfterEntry'] as num?)?.toDouble() ?? 0,
      spacingAfterName: (json['spacingAfterName'] as num?)?.toDouble() ?? 0,
      logoSize: (json['logoSize'] as num?)?.toDouble() ?? 0,
      bullet: json['bullet'] as String? ?? "",
      bulletFontFamily: json['bulletFontFamily'] as String?,
      padding: json['padding'] == null
          ? const PaddingBox()
          : PaddingBox.fromJson(json['padding'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EducationsWidgetPreferenceToJson(
        EducationsWidgetPreference instance) =>
    <String, dynamic>{
      'title': instance.title,
      'spacingAfterTitle': instance.spacingAfterTitle,
      'spacingAfterEntry': instance.spacingAfterEntry,
      'spacingAfterName': instance.spacingAfterName,
      'logoSize': instance.logoSize,
      'bullet': instance.bullet,
      'bulletFontFamily': instance.bulletFontFamily,
      'padding': instance.padding,
    };

PanelPreference _$PanelPreferenceFromJson(Map<String, dynamic> json) =>
    PanelPreference(
      flex: json['flex'] as int? ?? 1,
      padding: json['padding'] == null
          ? const PaddingBox()
          : PaddingBox.fromJson(json['padding'] as Map<String, dynamic>),
      backgroundUrl: json['backgroundUrl'] as String? ?? "",
    );

Map<String, dynamic> _$PanelPreferenceToJson(PanelPreference instance) =>
    <String, dynamic>{
      'padding': instance.padding,
      'flex': instance.flex,
      'backgroundUrl': instance.backgroundUrl,
    };

HeaderWidgetPreference _$HeaderWidgetPreferenceFromJson(
        Map<String, dynamic> json) =>
    HeaderWidgetPreference(
      avatarWidth: (json['avatarWidth'] as num?)?.toDouble() ?? 0,
      avatarBackgroundColorString:
          json['avatarBackgroundColorString'] as String? ?? "#ffffffff",
      avatarAspectRatio: (json['avatarAspectRatio'] as num?)?.toDouble() ?? 1,
      avatarBorderRadius: (json['avatarBorderRadius'] as num?)?.toDouble() ?? 0,
      spacingAfterImage: (json['spacingAfterImage'] as num?)?.toDouble() ?? 0,
      spacingAfterName: (json['spacingAfterName'] as num?)?.toDouble() ?? 0,
      padding: json['padding'] == null
          ? const PaddingBox()
          : PaddingBox.fromJson(json['padding'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HeaderWidgetPreferenceToJson(
        HeaderWidgetPreference instance) =>
    <String, dynamic>{
      'avatarWidth': instance.avatarWidth,
      'avatarAspectRatio': instance.avatarAspectRatio,
      'avatarBackgroundColorString': instance.avatarBackgroundColorString,
      'avatarBorderRadius': instance.avatarBorderRadius,
      'spacingAfterImage': instance.spacingAfterImage,
      'spacingAfterName': instance.spacingAfterName,
      'padding': instance.padding,
    };

InterestFieldsWidgetPreference _$InterestFieldsWidgetPreferenceFromJson(
        Map<String, dynamic> json) =>
    InterestFieldsWidgetPreference(
      title: json['title'] as String? ?? "",
      spacingAfterTitle: (json['spacingAfterTitle'] as num?)?.toDouble() ?? 0,
      bullet: json['bullet'] as String? ?? "",
      bulletFontFamily: json['bulletFontFamily'] as String?,
      padding: json['padding'] == null
          ? const PaddingBox()
          : PaddingBox.fromJson(json['padding'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InterestFieldsWidgetPreferenceToJson(
        InterestFieldsWidgetPreference instance) =>
    <String, dynamic>{
      'title': instance.title,
      'spacingAfterTitle': instance.spacingAfterTitle,
      'bullet': instance.bullet,
      'bulletFontFamily': instance.bulletFontFamily,
      'padding': instance.padding,
    };

DividerWidgetPreference _$DividerWidgetPreferenceFromJson(
        Map<String, dynamic> json) =>
    DividerWidgetPreference(
      colorString: json['colorString'] as String? ?? "#ffffffff",
      thickness: (json['thickness'] as num?)?.toDouble() ?? 0,
      height: (json['height'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$DividerWidgetPreferenceToJson(
        DividerWidgetPreference instance) =>
    <String, dynamic>{
      'thickness': instance.thickness,
      'colorString': instance.colorString,
      'height': instance.height,
    };

WorkingExperiencesWidgetPreference _$WorkingExperiencesWidgetPreferenceFromJson(
        Map<String, dynamic> json) =>
    WorkingExperiencesWidgetPreference(
      title: json['title'] as String? ?? "",
      spacingAfterTitle: (json['spacingAfterTitle'] as num?)?.toDouble() ?? 0,
      spacingAfterEntry: (json['spacingAfterEntry'] as num?)?.toDouble() ?? 0,
      textBetweenRoleAndDuration:
          json['textBetweenRoleAndDuration'] as String? ?? "",
      spacingAfterEntryHeader:
          (json['spacingAfterEntryHeader'] as num?)?.toDouble() ?? 0,
      titleRelevantSkills: json['titleRelevantSkills'] as String? ?? "",
      titleAchievements: json['titleAchievements'] as String? ?? "",
      spacingBeforeSubcategory:
          (json['spacingBeforeSubcategory'] as num?)?.toDouble() ?? 0,
      spacingAfterSubcategoryTitle:
          (json['spacingAfterSubcategoryTitle'] as num?)?.toDouble() ?? 0,
      bullet: json['bullet'] as String? ?? "",
      bulletFontFamily: json['bulletFontFamily'] as String?,
      padding: json['padding'] == null
          ? const PaddingBox()
          : PaddingBox.fromJson(json['padding'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WorkingExperiencesWidgetPreferenceToJson(
        WorkingExperiencesWidgetPreference instance) =>
    <String, dynamic>{
      'title': instance.title,
      'spacingAfterTitle': instance.spacingAfterTitle,
      'spacingAfterEntry': instance.spacingAfterEntry,
      'textBetweenRoleAndDuration': instance.textBetweenRoleAndDuration,
      'spacingAfterEntryHeader': instance.spacingAfterEntryHeader,
      'titleRelevantSkills': instance.titleRelevantSkills,
      'titleAchievements': instance.titleAchievements,
      'spacingBeforeSubcategory': instance.spacingBeforeSubcategory,
      'bullet': instance.bullet,
      'bulletFontFamily': instance.bulletFontFamily,
      'padding': instance.padding,
      'spacingAfterSubcategoryTitle': instance.spacingAfterSubcategoryTitle,
    };

Preference _$PreferenceFromJson(Map<String, dynamic> json) => Preference(
      expectedWidth: (json['expectedWidth'] as num).toDouble(),
      aspectRatio: (json['aspectRatio'] as num).toDouble(),
      leftPanelPref: json['leftPanelPref'] == null
          ? const PanelPreference()
          : PanelPreference.fromJson(
              json['leftPanelPref'] as Map<String, dynamic>),
      rightPanelPref: json['rightPanelPref'] == null
          ? const PanelPreference()
          : PanelPreference.fromJson(
              json['rightPanelPref'] as Map<String, dynamic>),
      basicInfosWidgetPreference: json['basicInfosWidgetPreference'] == null
          ? null
          : BasicInfosWidgetPreference.fromJson(
              json['basicInfosWidgetPreference'] as Map<String, dynamic>),
      educationsWidgetPreference: json['educationsWidgetPreference'] == null
          ? null
          : EducationsWidgetPreference.fromJson(
              json['educationsWidgetPreference'] as Map<String, dynamic>),
      interestFieldsWidgetPreference: json['interestFieldsWidgetPreference'] ==
              null
          ? null
          : InterestFieldsWidgetPreference.fromJson(
              json['interestFieldsWidgetPreference'] as Map<String, dynamic>),
      workingExperiencesWidgetPreference:
          json['workingExperiencesWidgetPreference'] == null
              ? null
              : WorkingExperiencesWidgetPreference.fromJson(
                  json['workingExperiencesWidgetPreference']
                      as Map<String, dynamic>),
      headerWidgetPreference: json['headerWidgetPreference'] == null
          ? null
          : HeaderWidgetPreference.fromJson(
              json['headerWidgetPreference'] as Map<String, dynamic>),
      dividerWidgetPreference: json['dividerWidgetPreference'] == null
          ? null
          : DividerWidgetPreference.fromJson(
              json['dividerWidgetPreference'] as Map<String, dynamic>),
      pixelRatio: (json['pixelRatio'] as num?)?.toDouble(),
      themeJson: json['themeJson'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$PreferenceToJson(Preference instance) =>
    <String, dynamic>{
      'expectedWidth': instance.expectedWidth,
      'aspectRatio': instance.aspectRatio,
      'pixelRatio': instance.pixelRatio,
      'leftPanelPref': instance.leftPanelPref,
      'rightPanelPref': instance.rightPanelPref,
      'educationsWidgetPreference': instance.educationsWidgetPreference,
      'basicInfosWidgetPreference': instance.basicInfosWidgetPreference,
      'headerWidgetPreference': instance.headerWidgetPreference,
      'interestFieldsWidgetPreference': instance.interestFieldsWidgetPreference,
      'workingExperiencesWidgetPreference':
          instance.workingExperiencesWidgetPreference,
      'dividerWidgetPreference': instance.dividerWidgetPreference,
      'themeJson': instance.themeJson,
    };
