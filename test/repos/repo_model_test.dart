import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:github_client/main_model.dart';
import 'package:github_client/repos/repo_model.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';

void main() {
  var client = MockClient((request) async {
    var url = request.url.toString();
    if (url == 'https://api.github.com/users/ragnor-rs/repos') {
      final result = [{
        'id': 123,
        'name': 'test',
        'description': 'description',
      }];
      return Response(json.encode(result), 200);
    } else {
      throw Exception("Unknown url: $url");
    }
  });

  test("RepoRepository", () async {
    var repoRepository = RepoRepositoryImpl(GitHubApi(client));
    var repoList = await repoRepository.getRepoList();
    expect(repoList[0].id, 123);
    expect(repoList[0].name, 'test');
    expect(repoList[0].description, 'description');
  });
}