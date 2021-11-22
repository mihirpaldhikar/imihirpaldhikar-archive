import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:imihirpaldhikar/models/youtube.model.dart';

class YouTubeService {
  final client = http.Client();
  final String _apiKey = dotenv.env['YOUTUBE_API_KEY']!;
  final String _channelId = 'UCGZKWMf5nOIhhUBUAdwW4Fg';

  Future<YoutubeModel?> getLatestVideos() async {
    try {
      final response = await client.get(
        Uri.parse(
          'https://www.googleapis'
          '.com/youtube/v3/search?part=snippet&channelId=$_channelId&maxResults=10'
          '&order=date&type=video&key=$_apiKey',
        ),
      );
      if (response.statusCode == 403) {
        return null;
      }
      if (response.statusCode == 200) {
        return YoutubeModel.fromJson(jsonDecode(response.body));
      } else {
        throw Exception('Failed to load videos');
      }
    } catch (error) {
      rethrow;
    }
  }
}
