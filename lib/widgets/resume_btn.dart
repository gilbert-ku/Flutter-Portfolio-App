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
                debugPrint("${(received / total * 100).toStringAsFixed(0)}%");
              }
            },
          );

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("File Downloaded"),
            ),
          );
        } catch (e) {
          debugPrint("Download failed: ${e.toString()}");
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
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.green,
            Colors.pink,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(50), // Match the button's shape

        // boxshadow
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent, // Set to transparent
          shadowColor: Colors.transparent, // Remove default shadow
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50), // Match the container
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 12,
          ),
        ),
        onPressed: () {
          downloadFile(context);
        },
        label: Text(
          "Download Resume",
          style: GoogleFonts.domine(
            textStyle: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
        icon: const Icon(
          Icons.download,
          color: Colors.white,
        ),
      ),
    );
  }
}
