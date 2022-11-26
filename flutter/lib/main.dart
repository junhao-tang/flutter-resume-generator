import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume/dummy.dart';

import 'screen.dart';
import 'types.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Preference pref =
      (await Preference.loadFromFile()) ?? generateDummyPreference();
  pref.save();

  runApp(
    ChangeNotifierProvider<Preference>(
      create: (_) => pref,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Preference>(
      builder: (context, pref, child) {
        return MaterialApp(
          title: 'Flutter Resume',
          theme: pref.theme,
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: ResumeScreen(pref: pref),
          ),
        );
      },
    );
  }
}
