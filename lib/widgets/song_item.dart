import 'package:flutter/material.dart';

class SongItem extends StatelessWidget {
  final int index;
  final Map<String, String> songDetails;  // Accept song details as a parameter
  final VoidCallback onTap;

  const SongItem({Key? key, required this.index, required this.songDetails, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(songDetails['name'] ?? 'Unknown Song'),
      subtitle: Text('${songDetails['artist'] ?? 'Unknown Artist'} - ${songDetails['genre'] ?? 'Unknown Genre'}'),
      trailing: IconButton(
        icon: const Icon(Icons.play_arrow),
        onPressed: onTap,
      ),
    );
  }
}
