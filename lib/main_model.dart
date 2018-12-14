import 'dart:convert';

import 'package:http/http.dart' as http;

class GitHubApi {
  final http.Client client;

  GitHubApi(this.client);

  Future<List<dynamic>> getRepoList() async {
    final response = await client.get('https://api.github.com/users/ragnor-rs/repos');
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load repo list');
    }
  }
}

