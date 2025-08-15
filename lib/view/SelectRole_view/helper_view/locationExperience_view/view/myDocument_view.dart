import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/res/commonWidget/customButtonWithArrow.dart';
import 'package:direct_hiring/res/customStyle/custom_size.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/locationExperience_view/view/addCertificate_view.dart';
import 'package:get/get.dart';
import '../widget/customDocumentUpload_widget.dart';

class MyDocumentView extends StatefulWidget {
  const MyDocumentView({super.key});

  @override
  State<MyDocumentView> createState() => _MyDocumentViewState();
}

class _MyDocumentViewState extends State<MyDocumentView> {
  final Map<String, File?> _documents = {
    'passport': null,
    'consent_transfer_sg': null,
    'work_permit_front_sg': null,
    'work_permit_back_sg': null,
    'medical_result': null,
    'education_certificate': null,
  };

  Future<void> _pickDocument(String key) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'pdf'],
    );

    if (result != null && result.files.single.path != null) {
      setState(() {
        _documents[key] = File(result.files.single.path!);
      });
    }
  }

  void _removeDocument(String key) {
    setState(() {
      _documents[key] = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'My Documents',
        leadingIcon: Icons.arrow_back,
        onLeadingTap: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heightBox20,
              Divider(thickness: 0.15),
              heightBox10,
              CustomDocumentUploadRow(
                title: 'Passport',
                isRequired: true,
                onAdd: () => _pickDocument('passport'),
              ),
              if (_documents['passport'] != null) ...[
                heightBox10,
                _buildDocumentPreview('passport'),
              ],
              heightBox20,
              Divider(thickness: 0.15),
              heightBox10,
              CustomDocumentUploadRow(
                title: 'Transfer Release Paper\n(Singapore)',
                onAdd: () => _pickDocument('consent_transfer_sg'),
              ),
              if (_documents['consent_transfer_sg'] != null) ...[
                heightBox10,
                _buildDocumentPreview('consent_transfer_sg'),
              ],
              heightBox20,
              Divider(thickness: 0.15),
              heightBox10,
              CustomDocumentUploadRow(
                title: 'Work permit card FRONT\n(Singapore)',
                onAdd: () => _pickDocument('work_permit_front_sg'),
              ),
              if (_documents['work_permit_front_sg'] != null) ...[
                heightBox10,
                _buildDocumentPreview('work_permit_front_sg'),
              ],
              heightBox20,
              Divider(thickness: 0.15),
              heightBox10,
              CustomDocumentUploadRow(
                title: 'Work permit card BACK\n(Singapore)',
                onAdd: () => _pickDocument('work_permit_back_sg'),
              ),
              if (_documents['work_permit_back_sg'] != null) ...[
                heightBox10,
                _buildDocumentPreview('work_permit_back_sg'),
              ],
              heightBox20,
              Divider(thickness: 0.15),
              heightBox10,
              CustomDocumentUploadRow(
                title: 'Medical Result\n(Common documents)',
                onAdd: () => _pickDocument('medical_result'),
              ),
              if (_documents['medical_result'] != null) ...[
                heightBox10,
                _buildDocumentPreview('medical_result'),
              ],
              heightBox20,
              Divider(thickness: 0.15),
              heightBox10,
              CustomDocumentUploadRow(
                title: 'Education Certificate\n(Common documents)',
                onAdd: () => _pickDocument('education_certificate'),
              ),
              if (_documents['education_certificate'] != null) ...[
                heightBox10,
                _buildDocumentPreview('education_certificate'),
              ],
              heightBox50,
              CustomButtonWithArrow(
                title: 'Next',
                onTap: () {
                  Get.to( AddCertificateView());
                },
              ),
              heightBox50,
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDocumentPreview(String key) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey.shade100,
          ),
          child: _documents[key]!.path.toLowerCase().endsWith('.pdf')
              ? Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.picture_as_pdf, size: 40, color: Colors.red),
                SizedBox(height: 8),
                Text(
                  _documents[key]!.path.split('/').last,
                  style: TextStyle(fontSize: 14, color: Colors.black87),
                ),
              ],
            ),
          )
              : ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.file(
              _documents[key]!,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 150,
            ),
          ),
        ),
        Positioned(
          top: 5,
          right: 5,
          child: GestureDetector(
            onTap: () => _removeDocument(key),
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.close,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}