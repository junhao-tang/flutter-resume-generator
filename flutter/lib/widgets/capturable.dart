import 'package:flutter/material.dart';
import 'package:open_file_plus/open_file_plus.dart';
import 'package:save/save.dart';
import 'package:screenshot/screenshot.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart ' as pw;

class CapturableWidget extends StatelessWidget {
  final double width;
  final double aspectRatio;
  final double? pixelRatio;

  final Widget child;
  late final ScreenshotController screenshotController;

  CapturableWidget(
      {required this.width,
      required this.aspectRatio,
      required this.child,
      this.pixelRatio,
      Key? key})
      : super(key: key) {
    screenshotController = ScreenshotController();
  }

  String get randomFilename =>
      'capture_${DateTime.now().microsecondsSinceEpoch}';

  Future<void> captureAsImage() async {
    final bytes = await screenshotController.capture(pixelRatio: pixelRatio);
    if (bytes != null) {
      String? result =
          await save(FileType.imagePng, '$randomFilename.png', bytes);
      if (result != null) OpenFile.open(result);
    }
  }

  Future<void> captureAsPdf() async {
    final bytes = await screenshotController.capture(pixelRatio: pixelRatio);
    pw.Document pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat(width, width * aspectRatio),
        build: (context) {
          return pw.Expanded(
            child: pw.Image(
              pw.MemoryImage(bytes!),
              fit: pw.BoxFit.fill,
            ),
          );
        },
      ),
    );
    String? result =
        await save(FileType.pdf, '$randomFilename.pdf', await pdf.save());
    if (result != null) OpenFile.open(result);
  }

  @override
  Widget build(BuildContext context) {
    return Screenshot(
      key: UniqueKey(),
      controller: screenshotController,
      child: child,
    );
  }
}
