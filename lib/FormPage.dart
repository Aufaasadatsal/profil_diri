import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  final Function(String, String, String, String) onFormSubmit;

  const FormPage({Key? key, required this.onFormSubmit}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _schoolController = TextEditingController();
  final TextEditingController _roleController = TextEditingController();
  final TextEditingController _aboutController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Input Form")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: "Nama"),
            ),
            TextField(
              controller: _schoolController,
              decoration: const InputDecoration(labelText: "Nama Sekolah"),
            ),
            TextField(
              controller: _roleController,
              decoration: const InputDecoration(labelText: "Role"),
            ),
            TextField(
              controller: _aboutController,
              decoration: const InputDecoration(labelText: "About Me"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                widget.onFormSubmit(
                  _nameController.text,
                  _schoolController.text,
                  _roleController.text,
                  _aboutController.text,
                );
                Navigator.pop(context);
              },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
