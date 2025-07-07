import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tutorial/screens/pdfreader_screen.dart';

class ExtendedSearchSection extends StatefulWidget {
  
  const ExtendedSearchSection({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ExtendedSearchSectionState createState() => _ExtendedSearchSectionState();
}

class _ExtendedSearchSectionState extends State<ExtendedSearchSection> {
  Future<void> _requestPermission() async {
    if (Platform.isAndroid) {
      if (await Permission.storage.request().isGranted ||
          await Permission.manageExternalStorage.request().isGranted) {
        _pickPDF();
      } else {
        ScaffoldMessenger.of(
          // ignore: use_build_context_synchronously
          context,
        ).showSnackBar(SnackBar(content: Text("Storage Permission Denied")));
      }
    } else {
      _pickPDF();
    }
  }

  // Pick a PDF file and open in a new page
  Future<void> _pickPDF() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      String pdfPath = result.files.single.path!;
      Navigator.push(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => PDFViewerScreen(pdfPath: pdfPath)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.red,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: TextStyle(color: Colors.white70),
                filled: true,
                fillColor: Colors.white24,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(width: 8),
          ElevatedButton(
            onPressed: () {
              // Implement search functionality
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              backgroundColor: Colors.white24,
              elevation: 0,
            ),
            child: Icon(Icons.search, color: Colors.white),
          ),
          SizedBox(width: 8),
          ElevatedButton(
            onPressed: _requestPermission,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              backgroundColor: Colors.white24,
              elevation: 0,
            ),
            child: Icon(Icons.file_open, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
