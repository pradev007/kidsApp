// lib/tts_service.dart
import 'package:flutter_tts/flutter_tts.dart';

class TtsService {
  static final FlutterTts _flutterTts = FlutterTts();

  static Future<void> speak(String text) async {
    try {
      await _flutterTts.setLanguage('en-US');
      await _flutterTts.setPitch(1.5); // Slightly higher pitch
      await _flutterTts.setSpeechRate(0.5); // Slower rate for clarity
      await _flutterTts.setVolume(1.0); // Full volume
      await _flutterTts.speak(text);
      // Optionally set a specific voice
      await _flutterTts
          .setVoice({'name': 'en-us-x-iol-local', 'locale': 'en-US'});
    } catch (e) {
      print('Error: $e');
    }
  }

  static void stop() {
    _flutterTts.stop();
  }
}
