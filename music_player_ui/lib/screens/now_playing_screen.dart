import 'package:flutter/material.dart';

class NowPlayingScreen extends StatefulWidget {
  final int songIndex;
  final Map<String, String> songDetails;

  const NowPlayingScreen({Key? key, required this.songIndex, required this.songDetails}) : super(key: key);

  @override
  State<NowPlayingScreen> createState() => _NowPlayingScreenState();
}

class _NowPlayingScreenState extends State<NowPlayingScreen> {
  bool isPlaying = false;
  int currentIndex = 0;

  // Dummy list of songs for next/previous functionality
  List<Map<String, String>> songs = [
    {'name': 'Song 1', 'artist': 'Artist 1'},
    {'name': 'Song 2', 'artist': 'Artist 2'},
    {'name': 'Song 3', 'artist': 'Artist 3'},
  ];

  @override
  void initState() {
    super.initState();
    currentIndex = widget.songIndex;
  }

  void playPause() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  void nextSong() {
    setState(() {
      currentIndex = (currentIndex + 1) % songs.length;
    });
  }

  void previousSong() {
    setState(() {
      currentIndex = (currentIndex - 1 + songs.length) % songs.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final song = songs[currentIndex];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Now Playing'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Song Name
          Text(
            song['name'] ?? 'Unknown Song',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          // Artist Name
          Text(
            'Artist: ${song['artist'] ?? 'Unknown Artist'}',
            style: const TextStyle(fontSize: 18, color: Colors.grey),
          ),
          const SizedBox(height: 20),
          // Play/Pause Button
          IconButton(
            icon: Icon(
              isPlaying ? Icons.pause_circle_filled : Icons.play_circle_filled,
              size: 80,
              color: Colors.pink,
            ),
            onPressed: playPause,
          ),
          const SizedBox(height: 20),
          // Previous and Next Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.skip_previous, size: 40, color: Colors.pink),
                onPressed: previousSong,
              ),
              IconButton(
                icon: const Icon(Icons.skip_next, size: 40, color: Colors.pink),
                onPressed: nextSong,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
