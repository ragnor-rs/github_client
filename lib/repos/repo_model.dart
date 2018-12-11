import 'dart:convert';

import 'package:http/http.dart' as http;

class RepoRepository {
  final GitHubApi _api;

  RepoRepository(this._api);

  Future<List<Repo>> getRepoList() async => _api.getRepoList();
}

class GitHubApi {
  Future<List<Repo>> getRepoList() async {
    final response = await http.get('https://api.github.com/users/ragnor-rs/repos');
    if (response.statusCode == 200) {
      List<Repo> result = [];
      List<dynamic> listJson = json.decode(response.body);
      for (var repoJson in listJson) {
        result.add(Repo.fromJson(repoJson));
      }
      return result;
    } else {
      throw Exception('Failed to load repo list');
    }
  }
}

class Repo {
  final int id;
  final String name;
  final String description;

  Repo({this.id, this.name, this.description});

  factory Repo.fromJson(Map<String, dynamic> json) =>
      Repo(
        id: json['id'],
        name: json['name'],
        description: json['description'],
      );
}