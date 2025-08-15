import 'package:flutter/material.dart';

import '../../../../../../res/commonWidget/RoundTextField.dart';
import '../../../../../../res/commonWidget/customButton.dart';
import '../../../../../../res/commonWidget/customButtonTwo.dart';

class SignOutAccountDialog extends StatefulWidget {
  final void Function(String reason)? onDelete;

  const SignOutAccountDialog({Key? key, this.onDelete}) : super(key: key);

  @override
  State<SignOutAccountDialog> createState() => _SignOutAccountDialogState();
}

class _SignOutAccountDialogState extends State<SignOutAccountDialog> {
  final TextEditingController reasonController = TextEditingController();

  @override
  void dispose() {
    reasonController.dispose();
    super.dispose();
  }

  void _handleDelete() {
    final reason = reasonController.text.trim();
    if (reason.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please provide a reason')),
      );
      return;
    }
    if (widget.onDelete != null) {
      widget.onDelete!(reason);
    }
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: const Text(
        'Sign Out?',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Are you sure you want to log out?You will need to log in again to access your account and all features.',
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: CustomButtonTwo(
                height: 45,
                title: 'No',
                onTap: () => Navigator.of(context).pop(),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: CustomButton(
                height: 45,
                title: 'Yes',
                onTap: _handleDelete,
              ),
            ),
          ],
        )
      ],
    );
  }
}
