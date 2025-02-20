🎵 Flutter Music Player UI

A simple Flutter-based music player UI that allows users to add songs, view song details, and control playback.

📌 Features

Add songs with details (name, artist, year, and album cover)

View the list of songs

Navigate to a "Now Playing" screen

Play/Pause functionality

Skip to the next or previous song

🛠️ Installation

Clone the repository:

git clone https://github.com/your-username/flutter-music-player-ui.git

Navigate to the project folder:

cd flutter-music-player-ui

Install dependencies:

flutter pub get

Run the app:

flutter run

📂 Project Structure

lib/
│-- main.dart
│-- screens/
│   ├── home_screen.dart
│   ├── now_playing_screen.dart
│   ├── song_form_screen.dart
│-- widgets/
│   ├── song_tile.dart
│-- assets/
│   ├── images/
│   ├── songs/

🚀 Dependencies

Ensure the following dependencies are added to your pubspec.yaml:

dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.0
  file_picker: ^6.1.1
