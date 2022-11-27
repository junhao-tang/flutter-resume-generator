import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:json_theme/json_theme.dart';
import 'package:resume/extension.dart';

import 'utils.dart';

part 'types.g.dart';

enum InfoType { text, email, link }

@JsonSerializable()
class BasicInfo {
  final InfoType type;
  final String? alt;
  // https://api.flutter.dev/flutter/material/Icons-class.html#constants
  final int? iconCodePoint;
  final String iconFamily;
  final String data;
  final String? iconImageUrl;

  const BasicInfo({
    this.type = InfoType.text,
    required this.data,
    this.alt,
    this.iconCodePoint,
    this.iconImageUrl,
    this.iconFamily = "MaterialIcons",
  });

  factory BasicInfo.fromJson(Map<String, dynamic> json) =>
      _$BasicInfoFromJson(json);
  Map<String, dynamic> toJson() => _$BasicInfoToJson(this);
}

@JsonSerializable()
class WorkingExperience {
  final String companyName;
  final String jobTitle;
  final String duration;

  final String description;
  final List<String>? relevantSkills;
  final List<String>? acheivements;

  const WorkingExperience({
    required this.companyName,
    required this.jobTitle,
    required this.duration,
    required this.description,
    this.relevantSkills,
    this.acheivements,
  });

  factory WorkingExperience.fromJson(Map<String, dynamic> json) =>
      _$WorkingExperienceFromJson(json);
  Map<String, dynamic> toJson() => _$WorkingExperienceToJson(this);
}

@JsonSerializable()
class Education {
  final String name;
  final String subject;
  final String duration;
  final String? logo;
  final String? grade;
  final String? hons;
  final List<String>? achievements;

  const Education({
    required this.name,
    required this.subject,
    required this.duration,
    this.logo,
    this.grade,
    this.hons,
    this.achievements,
  });

  factory Education.fromJson(Map<String, dynamic> json) =>
      _$EducationFromJson(json);
  Map<String, dynamic> toJson() => _$EducationToJson(this);
}

@JsonSerializable()
class Resume {
  final String name;
  final String? imageUrl;
  final String? introduction;
  final List<BasicInfo> basicInfos;
  final List<String> interestedFields;
  final List<WorkingExperience> workingExperiences;
  final List<Education> educations;

  const Resume({
    required this.name,
    this.imageUrl,
    this.introduction,
    required this.basicInfos,
    required this.interestedFields,
    required this.workingExperiences,
    required this.educations,
  });
  static const String filename = "resume.json";

  factory Resume.fromJson(Map<String, dynamic> json) => _$ResumeFromJson(json);
  Map<String, dynamic> toJson() => _$ResumeToJson(this);

  static Future<Resume?> loadFromFile() async {
    final data = await loadJsonFromFile(filename);
    return data == null ? null : Resume.fromJson(data);
  }

  Future<String?> save() {
    return writeJsonToFile(filename, toJson());
  }
}

@JsonSerializable()
class PaddingBox {
  final double top;
  final double bottom;
  final double left;
  final double right;

  const PaddingBox(
      {this.top = 0, this.left = 0, this.right = 0, this.bottom = 0});

  EdgeInsets get edgeInsets => EdgeInsets.fromLTRB(left, top, right, bottom);

  factory PaddingBox.fromJson(Map<String, dynamic> json) =>
      _$PaddingBoxFromJson(json);
  Map<String, dynamic> toJson() => _$PaddingBoxToJson(this);
}

@JsonSerializable()
class BasicInfosWidgetPreference {
  final double spacingBetweenInfos;
  final double iconCellSize;
  final double spacingBetweenIconAndText;
  final double iconBorderRadius;
  final double iconSize;
  final PaddingBox padding;
  final String iconBackgroundColorString;

  const BasicInfosWidgetPreference({
    this.spacingBetweenInfos = 0,
    this.iconCellSize = 0,
    this.spacingBetweenIconAndText = 0,
    this.iconBorderRadius = 0,
    this.iconSize = 0,
    this.padding = const PaddingBox(),
    this.iconBackgroundColorString = "",
  });

  factory BasicInfosWidgetPreference.fromJson(Map<String, dynamic> json) =>
      _$BasicInfosWidgetPreferenceFromJson(json);
  Map<String, dynamic> toJson() => _$BasicInfosWidgetPreferenceToJson(this);

  Color get iconBackgroundColor => HexColor.toColor(iconBackgroundColorString);
}

@JsonSerializable()
class EducationsWidgetPreference {
  final String title;
  final double spacingAfterTitle;
  final double spacingAfterEntry;
  final double spacingAfterName;
  final double logoSize;
  final String bullet;
  final String? bulletFontFamily;
  final PaddingBox padding;

  const EducationsWidgetPreference({
    this.title = "",
    this.spacingAfterTitle = 0,
    this.spacingAfterEntry = 0,
    this.spacingAfterName = 0,
    this.logoSize = 0,
    this.bullet = "",
    this.bulletFontFamily,
    this.padding = const PaddingBox(),
  });

  factory EducationsWidgetPreference.fromJson(Map<String, dynamic> json) =>
      _$EducationsWidgetPreferenceFromJson(json);
  Map<String, dynamic> toJson() => _$EducationsWidgetPreferenceToJson(this);
}

@JsonSerializable()
class PanelPreference {
  final PaddingBox padding;
  final int flex;
  final String backgroundUrl;

  const PanelPreference({
    this.flex = 1,
    this.padding = const PaddingBox(),
    this.backgroundUrl = "",
  });

  factory PanelPreference.fromJson(Map<String, dynamic> json) =>
      _$PanelPreferenceFromJson(json);
  Map<String, dynamic> toJson() => _$PanelPreferenceToJson(this);
}

@JsonSerializable()
class HeaderWidgetPreference {
  final double avatarWidth;
  final double avatarAspectRatio;
  final String avatarBackgroundColorString;
  final double avatarBorderRadius;
  final double spacingAfterImage;
  final double spacingAfterName;
  final PaddingBox padding;

  const HeaderWidgetPreference({
    this.avatarWidth = 0,
    this.avatarBackgroundColorString = "#ffffffff",
    this.avatarAspectRatio = 1,
    this.avatarBorderRadius = 0,
    this.spacingAfterImage = 0,
    this.spacingAfterName = 0,
    this.padding = const PaddingBox(),
  });
  factory HeaderWidgetPreference.fromJson(Map<String, dynamic> json) =>
      _$HeaderWidgetPreferenceFromJson(json);
  Map<String, dynamic> toJson() => _$HeaderWidgetPreferenceToJson(this);

  Color get avatarBackgroundColor =>
      HexColor.toColor(avatarBackgroundColorString);
}

@JsonSerializable()
class InterestFieldsWidgetPreference {
  final String title;
  final double spacingAfterTitle;
  final String bullet;
  final String? bulletFontFamily;
  final PaddingBox padding;

  const InterestFieldsWidgetPreference({
    this.title = "",
    this.spacingAfterTitle = 0,
    this.bullet = "",
    this.bulletFontFamily,
    this.padding = const PaddingBox(),
  });
  factory InterestFieldsWidgetPreference.fromJson(Map<String, dynamic> json) =>
      _$InterestFieldsWidgetPreferenceFromJson(json);
  Map<String, dynamic> toJson() => _$InterestFieldsWidgetPreferenceToJson(this);
}

@JsonSerializable()
class DividerWidgetPreference {
  final double thickness;
  final String colorString;
  final double height;

  const DividerWidgetPreference({
    this.colorString = "#ffffffff",
    this.thickness = 0,
    this.height = 0,
  });

  Color get color => HexColor.toColor(colorString);

  factory DividerWidgetPreference.fromJson(Map<String, dynamic> json) =>
      _$DividerWidgetPreferenceFromJson(json);
  Map<String, dynamic> toJson() => _$DividerWidgetPreferenceToJson(this);
}

@JsonSerializable()
class WorkingExperiencesWidgetPreference {
  final String title;
  final double spacingAfterTitle;
  final double spacingAfterEntry;
  final String textBetweenRoleAndDuration;
  final double spacingAfterEntryHeader;
  final String titleRelevantSkills;
  final String titleAchievements;
  final double spacingBeforeSubcategory;
  final String bullet;
  final String? bulletFontFamily;
  final PaddingBox padding;
  final double spacingAfterSubcategoryTitle;

  const WorkingExperiencesWidgetPreference({
    this.title = "",
    this.spacingAfterTitle = 0,
    this.spacingAfterEntry = 0,
    this.textBetweenRoleAndDuration = "",
    this.spacingAfterEntryHeader = 0,
    this.titleRelevantSkills = "",
    this.titleAchievements = "",
    this.spacingBeforeSubcategory = 0,
    this.spacingAfterSubcategoryTitle = 0,
    this.bullet = "",
    this.bulletFontFamily,
    this.padding = const PaddingBox(),
  });

  factory WorkingExperiencesWidgetPreference.fromJson(
          Map<String, dynamic> json) =>
      _$WorkingExperiencesWidgetPreferenceFromJson(json);
  Map<String, dynamic> toJson() =>
      _$WorkingExperiencesWidgetPreferenceToJson(this);
}

@JsonSerializable()
class Preference extends ChangeNotifier {
  static const String filename = "pref.json";

  double expectedWidth;
  double aspectRatio;
  double? pixelRatio;

  PanelPreference leftPanelPref;
  PanelPreference rightPanelPref;

// TODO: use .of?
  EducationsWidgetPreference? educationsWidgetPreference;
  BasicInfosWidgetPreference? basicInfosWidgetPreference;
  HeaderWidgetPreference? headerWidgetPreference;
  InterestFieldsWidgetPreference? interestFieldsWidgetPreference;
  WorkingExperiencesWidgetPreference? workingExperiencesWidgetPreference;
  DividerWidgetPreference? dividerWidgetPreference;

  Map<String, dynamic>? themeJson;

  Preference({
    required this.expectedWidth,
    required this.aspectRatio,
    this.leftPanelPref = const PanelPreference(),
    this.rightPanelPref = const PanelPreference(),
    this.basicInfosWidgetPreference,
    this.interestFieldsWidgetPreference,
    this.educationsWidgetPreference,
    this.headerWidgetPreference,
    this.workingExperiencesWidgetPreference,
    this.dividerWidgetPreference,
    this.pixelRatio,
    this.themeJson,
  });

  factory Preference.fromJson(Map<String, dynamic> json) =>
      _$PreferenceFromJson(json);
  Map<String, dynamic> toJson() => _$PreferenceToJson(this);

  static Future<Preference?> loadFromFile() async {
    final data = await loadJsonFromFile(filename);
    return data == null ? null : Preference.fromJson(data);
  }

  ThemeData? get theme =>
      themeJson == null ? null : ThemeDecoder.decodeThemeData(themeJson);

  // TODO: ugly
  void update(Preference preference) {
    expectedWidth = preference.expectedWidth;
    aspectRatio = preference.aspectRatio;
    basicInfosWidgetPreference = preference.basicInfosWidgetPreference;
    educationsWidgetPreference = preference.educationsWidgetPreference;
    interestFieldsWidgetPreference = preference.interestFieldsWidgetPreference;
    workingExperiencesWidgetPreference =
        preference.workingExperiencesWidgetPreference;
    headerWidgetPreference = preference.headerWidgetPreference;
    dividerWidgetPreference = preference.dividerWidgetPreference;
    themeJson = preference.themeJson;
    leftPanelPref = preference.leftPanelPref;
    rightPanelPref = preference.rightPanelPref;
    notifyListeners();
  }

  Future<String?> save() {
    return writeJsonToFile(filename, toJson());
  }
}
