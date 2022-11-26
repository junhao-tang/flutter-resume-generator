import 'dart:convert';
import 'dart:io';

import 'package:save/save.dart';

Future<Map<String, dynamic>?> loadJsonFromFile(String filename) async {
  final path = await getDownloadLocation(filename);
  if (path == null) return null;
  File file = File(path);
  if (!await file.exists()) return null;
  return jsonDecode(await file.readAsString());
}

Future<String?> writeJsonToFile(String filename, Map<String, dynamic> data) {
  const encoder = JsonEncoder.withIndent("     ");
  String json = encoder.convert(data);
  return save(
    FileType.others,
    filename,
    utf8.encoder.convert(json),
  );
}
