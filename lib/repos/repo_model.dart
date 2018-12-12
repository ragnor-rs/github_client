import 'package:github_client/main_model.dart';

class RepoRepository {
  final GitHubApi _api;

  RepoRepository(this._api);

  Future<List<Repo>> getRepoList() async {
    final list = await _api.getRepoList();
    return list.map((item) => Repo.fromJson(item));
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