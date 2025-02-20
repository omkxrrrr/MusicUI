import 'package:flutter/material.dart';

class SongFormScreen extends StatefulWidget {
  final Function(Map<String, dynamic>) onAddSong;

  const SongFormScreen({Key? key, required this.onAddSong}) : super(key: key);

  @override
  State<SongFormScreen> createState() => _SongFormScreenState();
}

class _SongFormScreenState extends State<SongFormScreen> {
  final _nameController = TextEditingController();
  final _yearController = TextEditingController();
  final _artistController = TextEditingController();

  void _submitForm() {
    final newSong = {
      'name': _nameController.text,
      'year': _yearController.text,
      'artist': _artistController.text,
    };

    widget.onAddSong(newSong);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Song'),
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Song Name'),
            ),
            TextField(
              controller: _yearController,
              decoration: const InputDecoration(labelText: 'Release Year'),
            ),
            TextField(
              controller: _artistController,
              decoration: const InputDecoration(labelText: 'Artist'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitForm,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
              ),
              child: const Text('Add Song'),
            ),
          ],
        ),
      ),
    );
  }
}
