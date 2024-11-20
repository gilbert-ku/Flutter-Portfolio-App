import 'package:flutter/material.dart';

// packeges
import 'package:path/path.dart' as p;
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dio/dio.dart';

class ResumeBtn extends StatefulWidget {
  const ResumeBtn({super.key});

  @override
  State<ResumeBtn> createState() => _ResumeBtnState();
}

class _ResumeBtnState extends State<ResumeBtn> {
  String resumeUrl =
      "https://drive.google.com/file/d/16DhIr0zTp4pHMLidXpdRvTEEj4-d9EPw/view?usp=sharing";

  // function to handle file download
  void downloadFile(BuildContext context) async {
    final status = await Permission.storage.request();

    if (status.isGranted) {
      final dir = await getExternalStorageDirectory();
      if (dir != null) {
        String saveName = "gilbert_cv.pdf";
        String savePath = p.join(dir.path, saveName);

        try {
          await Dio().download(
            resumeUrl,
            savePath,
            onReceiveProgress: (received, total) {
              if (total != -1) {
                print("${(received / total * 100).toStringAsFixed(0)}%");
              }
            },
          );

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("File Downloaded"),
            ),
          );
        } catch (e) {
          print("Download failed: ${e.toString()}");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Download failed: ${e.toString()}"),
            ),
          );
        }
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Permission Denied!"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 12,
      ),
      child: ElevatedButton.icon(
        onPressed: () {
          downloadFile(context);
        },
        label: Text(
          " Download Resume",
          style: GoogleFonts.domine(
            textStyle: TextStyle(
              fontSize: 20,
              color: Colors.pink,
            ),
          ),
        ),
        icon: Icon(
          Icons.download,
          color: Colors.pink,
        ),
      ),
    );
  }
}
