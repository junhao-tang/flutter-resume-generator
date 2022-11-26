import 'package:flutter/material.dart';
import 'package:resume/extension.dart';

import 'types.dart';
import 'extension.dart';

Resume generateDummyResume() => const Resume(
      name: "帅气的技术宅",
      imageUrl:
          "https://static.wikia.nocookie.net/kagerouproject/images/0/0e/MCA_-_Shintaro.png/revision/latest/scale-to-width-down/300?cb=20190705194828",
      introduction:
          "人见人爱，车见车载，帅得不行。\n人见人爱，车见车载，帅得不行。\n人见人爱，车见车载，帅得不行。\n人见人爱，车见车载，帅得不行。\n",
      basicInfos: [
        BasicInfo(
          iconCodePoint: 0xe120,
          data: "18 岁 (2004)",
          alt: "生日日期",
        ),
        BasicInfo(
          iconCodePoint: 0xe6f2,
          data: "17 年 专业经验 (2005)",
          alt: "工作经验",
        ),
        BasicInfo(
          iconCodePoint: 0xe4f0,
          data: "地球人",
          alt: "国际",
        ),
        BasicInfo(
          iconCodePoint: 0xe39f,
          data: "+6010-123456789",
          alt: "手机",
        ),
        BasicInfo(
          type: InfoType.email,
          iconCodePoint: 0xe22a,
          data: "pepega@pepega.com",
          alt: "电邮",
        ),
        BasicInfo(
          type: InfoType.link,
          iconImageUrl: "https://cdn-icons-png.flaticon.com/512/49/49656.png",
          data: "https://www.linkedin.com/xXSoftwareEngineerXx",
          alt: "xXSoftwareEngineerXx",
        ),
      ],
      interestedFields: [
        "大型游戏开发",
        "程序测试与优化",
        "界面与用户体验设计",
        "系统架构设计",
        "互联网开发",
      ],
      workingExperiences: [
        WorkingExperience(
          companyName: "我爸爸的公司",
          jobTitle: "少爷",
          duration: "2010 - 现在",
          description:
              "一些不废话的简介\n一些不废话的简介\n一些不废话的简介\n一些不废话的简介\n一些不废话的简介\n一些不废话的简介\n一些不废话的简介",
          relevantSkills: [
            "把氧气转换成二氧化碳",
            "确保厕所卫生干净",
            "公司空调体验与管理",
          ],
          acheivements: [
            "2022 成功被票选为 [ 最躺平的员工 ]",
            "2021 成功地阻止公司扩展",
          ],
        ),
        WorkingExperience(
          companyName: "我家",
          jobTitle: "少爷",
          duration: "2005 - 2004",
          description:
              "一些不废话的简介\n一些不废话的简介\n一些不废话的简介\n一些不废话的简介\n一些不废话的简介\n一些不废话的简介\n一些不废话的简介",
        ),
      ],
      educations: [
        Education(
          name: "某某大学",
          subject: "某某专业",
          logo: "http://www.wdsoft.in/blog-images/2018/08/Badge-Logo.png",
          duration: "2015 - 2022",
          hons: "一等荣耀",
          grade: "4.0 / 4.0 CGPA ",
          achievements: [
            "2020 某某部 首席会长",
            "2021 某某 自愿工作",
          ],
        ),
        Education(
          name: "某某学院",
          subject: "某某专业基本训练",
          duration: "2005 - 2014",
        ),
      ],
    );

Preference generateDummyPreference() => Preference(
      expectedWidth: 750,
      aspectRatio: 1.41428571429,
      leftPanelPref: const PanelPreference(
        flex: 260,
        backgroundUrl:
            "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b59388f2-d9d9-4daa-81f6-90a89b0f005b/d6ebgj3-d9eb52f4-f019-4c87-913d-8d8f94edba7f.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2I1OTM4OGYyLWQ5ZDktNGRhYS04MWY2LTkwYTg5YjBmMDA1YlwvZDZlYmdqMy1kOWViNTJmNC1mMDE5LTRjODctOTEzZC04ZDhmOTRlZGJhN2YuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.c_ws3OXRskmkIvrtZzkMm0s0NcG851Zcs6siFpvxR2U",
        padding: PaddingBox(
          left: 30,
          right: 30,
          top: 50,
          bottom: 50,
        ),
      ),
      rightPanelPref: const PanelPreference(
        flex: 580,
        backgroundUrl:
            "https://images.unsplash.com/photo-1585314062340-f1a5a7c9328d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YmxhY2slMjB0ZXh0dXJlfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
        padding: PaddingBox(
          left: 30,
          right: 30,
          top: 50,
          bottom: 50,
        ),
      ),
      dividerWidgetPreference: DividerWidgetPreference(
        colorString: Colors.white.hexCode,
        thickness: 1,
        height: 50,
      ),
      basicInfosWidgetPreference: BasicInfosWidgetPreference(
        spacingBetweenInfos: 5,
        spacingBetweenIconAndText: 8,
        iconCellSize: 20,
        iconSize: 15,
        iconBorderRadius: 5,
        iconBackgroundColorString: Colors.grey.hexCode,
        padding: const PaddingBox(top: 15, bottom: 30),
      ),
      interestFieldsWidgetPreference: const InterestFieldsWidgetPreference(
        title: "专业技能",
        spacingAfterTitle: 10,
        bullet: "*",
        padding: PaddingBox(top: 45, bottom: 45),
      ),
      educationsWidgetPreference: const EducationsWidgetPreference(
        title: "教育背景",
        logoSize: 35,
        spacingAfterTitle: 10,
        spacingAfterEntry: 40,
        spacingAfterName: 5,
        bullet: "*",
        padding: PaddingBox(top: 20),
      ),
      headerWidgetPreference: const HeaderWidgetPreference(
        avatarWidth: 130,
        avatarAspectRatio: 38 / 50,
        avatarBorderRadius: 5,
        spacingAfterImage: 20,
        spacingAfterName: 10,
        padding: PaddingBox(bottom: 22),
      ),
      workingExperiencesWidgetPreference:
          const WorkingExperiencesWidgetPreference(
        title: "工作经历",
        spacingAfterTitle: 15,
        spacingAfterEntryHeader: 5,
        textBetweenRoleAndDuration: "   |   ",
        titleRelevantSkills: "相关经验",
        titleAchievements: "任职成就",
        spacingBeforeSubcategory: 10,
        spacingAfterSubcategoryTitle: 5,
        spacingAfterEntry: 40,
        bullet: "*",
      ),
      themeJson: {
        "iconTheme": {
          "color": Colors.white.hexCode,
        },
        "textTheme": {
          "headlineLarge": {
            "color": Colors.blue.hexCode,
          },
          "headlineMedium": {
            "color": Colors.white.hexCode,
          },
          "headlineSmall": {
            "color": Colors.white.hexCode,
          },
          "titleLarge": {
            "color": Colors.white.hexCode,
          },
          "titleMedium": {
            "color": Colors.white.hexCode,
          },
          "titleSmall": {
            "color": Colors.white.hexCode,
          },
          "bodyMedium": {
            "color": Colors.grey.hexCode,
          },
        },
      },
      // to retrieve all possible fields:
      // themeJson: ThemeEncoder.encodeThemeData(
      //   ThemeData(),
      // )!,
    );
