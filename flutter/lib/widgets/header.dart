import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:resume/types.dart';

class HeaderWidget extends StatelessWidget {
  final String? imageUrl;
  final String name;
  final String? introduction;
  final HeaderWidgetPreference pref;

  const HeaderWidget({
    Key? key,
    this.imageUrl,
    required this.name,
    this.introduction,
    HeaderWidgetPreference? pref,
  })  : pref = pref ?? const HeaderWidgetPreference(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: pref.padding.edgeInsets,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (imageUrl != null)
            Container(
              width: pref.avatarWidth,
              decoration: BoxDecoration(
                color: pref.avatarBackgroundColor,
                borderRadius: BorderRadius.circular(pref.avatarBorderRadius),
              ),
              margin: EdgeInsets.only(right: pref.spacingAfterImage),
              clipBehavior: Clip.hardEdge,
              child: AspectRatio(
                aspectRatio: pref.avatarAspectRatio,
                child: CachedNetworkImage(
                  imageUrl: imageUrl!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.headlineLarge,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: pref.spacingAfterName),
                if (introduction != null)
                  Text(
                    introduction!,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
