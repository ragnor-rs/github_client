import 'package:github_client/main_model.dart';

class RepoRepository {
  final GitHubApi _api;

  RepoRepository(this._api);

  Future<List<Repo>> getRepoList() async {
    List<Repo> result = [];
    final list = await _api.getRepoList();
    for (var item in list) {
      result.add(Repo.fromJson(item));
    }
    return result;
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