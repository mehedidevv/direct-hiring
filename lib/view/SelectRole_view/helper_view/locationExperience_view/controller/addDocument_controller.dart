import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';

class DocumentPickController extends GetxController {
  // For storing one document per type
  RxMap<String, File?> uploadedDocuments = <String, File?>{}.obs;

  Future<void> pickDocument(String documentKey) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'], // allowed file types
    );

    if (result != null && result.files.single.path != null) {
      uploadedDocuments[documentKey] = File(result.files.single.path!);
      Get.snackbar("Success", "${result.files.single.name} selected");
    } else {
      Get.snackbar("Cancelled", "No document selected");
    }
  }
}
