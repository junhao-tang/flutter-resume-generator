import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:resume/types.dart';
import 'package:url_launcher/url_launcher.dart';

class BasicInfosWidget extends StatelessWidget {
  final List<BasicInfo> infos;
  final BasicInfosWidgetPreference pref;

  const BasicInfosWidget({
    super.key,
    required this.infos,
    BasicInfosWidgetPreference? pref,
  }) : pref = pref ?? const BasicInfosWidgetPreference();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: pref.padding.edgeInsets,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: infos
            .map(
              (e) => Container(
                margin: EdgeInsets.only(bottom: pref.spacingBetweenInfos),
                child: _InfoWidget(
                  info: e,
                  pref: pref,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class _InfoWidget extends StatelessWidget {
  final BasicInfo info;
  final BasicInfosWidgetPreference pref;

  const _InfoWidget({
    required this.info,
    required this.pref,
  });

  @override
  Widget build(BuildContext context) {
    Widget? iconContent;
    if (info.iconImageUrl != null) {
      iconContent = SizedBox(
        width: pref.iconSize,
        child: AspectRatio(
          aspectRatio: 1,
          child: CachedNetworkImage(
            imageUrl: info.iconImageUrl!,
            fit: BoxFit.contain,
          ),
        ),
      );
    } else if (info.iconCodePoint != null) {
      iconContent = Icon(
        IconData(
          info.iconCodePoint!,
          fontFamily: info.iconFamily,
        ),
        size: pref.iconSize,
        semanticLabel: info.alt,
      );
    }

    Widget content;
    switch (info.type) {
      case InfoType.email:
        final mailtoLink = Mailto(
          to: [info.data],
        );
        final uri = Uri.parse(mailtoLink.toString());
        content = MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () => launchUrl(uri),
            child: Text(
              info.data,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        );
        break;
      case InfoType.link:
        final uri = Uri.parse(info.data);
        content = MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () => launchUrl(uri),
            child: Text(
              info.alt ?? info.data,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        );
        break;
      default:
        content = Text(
          info.data,
          overflow: TextOverflow.ellipsis,
        );
    }
    return Row(
      children: [
        if (iconContent != null)
          Container(
            width: pref.iconCellSize,
            height: pref.iconCellSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(pref.iconBorderRadius),
              color: pref.iconBackgroundColor,
            ),
            child: Center(
              child: iconContent,
            ),
          ),
        SizedBox(
          width: pref.spacingBetweenIconAndText,
        ),
        Expanded(child: content)
      ],
    );
  }
}
