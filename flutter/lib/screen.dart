import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume/types.dart';

import 'dummy.dart';
import 'widgets/capturable.dart';
import 'widgets/hud.dart';
import 'widgets/resume.dart';
import 'widgets/screen_adapter.dart';

class ResumeScreen extends StatelessWidget {
  final Preference pref;

  const ResumeScreen({required this.pref, Key? key}) : super(key: key);

  Future<Resume> loadResume() async {
    Resume? resume = await Resume.loadFromFile();
    if (resume == null) {
      resume = generateDummyResume();
      await resume.save();
    }
    return resume;
  }

  @override
  Widget build(BuildContext context) {
    final pref = Provider.of<Preference>(context, listen: false);

    final resumeWidget = SizedBox(
      width: pref.expectedWidth,
      height: pref.expectedWidth * pref.aspectRatio,
      child: ClipRect(
        child: FutureBuilder(
          future: loadResume(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const Text("loading");
            if (snapshot.hasError) return Text(snapshot.error.toString());

            final resume = snapshot.data as Resume;
            final pref = Provider.of<Preference>(context, listen: false);
            return ResumeWidget(
              resume: resume,
              pref: pref,
            );
          },
        ),
      ),
    );

    final capturable = CapturableWidget(
      width: pref.expectedWidth,
      aspectRatio: pref.aspectRatio,
      child: resumeWidget,
    );

    final screenAdapter = ScreenAdapterWidget(
      expectedWidth: pref.expectedWidth,
      aspectRatio: pref.aspectRatio,
      child: capturable,
    );

    final Map<IconData, VoidCallback> callbackMap = {
      Icons.photo_camera: capturable.captureAsImage,
      Icons.description: capturable.captureAsPdf,
      Icons.refresh: () async {
        Preference? loadedPref = await Preference.loadFromFile();
        if (loadedPref == null) return;
        pref.update(loadedPref);
      },
    };

    return HudWidget(
      callbackMap: callbackMap,
      child: Center(child: screenAdapter),
    );
  }
}
