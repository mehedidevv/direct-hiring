import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickController extends GetxController {
  final Rx<File?> mainImage = Rx<File?>(null);
  final Rx<File?> mainImageTwo = Rx<File?>(null);
  final RxList<File?> additionalImages = List<File?>.filled(2, null).obs;
  final RxList<File?> additionalImagesTwo = List<File?>.filled(2, null).obs;

  final ImagePicker picker = ImagePicker();

  Future<void> pickMainImage() async {
    final XFile? picked = await picker.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      mainImage.value = File(picked.path);
    }
  }

  Future<void> pickMainImageTwo() async {
    final XFile? picked = await picker.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      mainImageTwo.value = File(picked.path);
    }
  }

  Future<void> pickAdditionalImage(int index) async {
    final XFile? picked = await picker.pickImage(source: ImageSource.gallery);
    if (picked != null && index >= 0 && index < additionalImages.length) {
      additionalImages[index] = File(picked.path);
    }
  }

  Future<void> pickAdditionalImageTwo(int index) async {
    final XFile? picked = await picker.pickImage(source: ImageSource.gallery);
    if (picked != null && index >= 0 && index < additionalImagesTwo.length) {
      additionalImagesTwo[index] = File(picked.path);
    }
  }
}
