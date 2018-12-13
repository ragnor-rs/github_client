import 'package:github_client/main_model.dart';
import 'package:github_client/repos/repo_model.dart';
import 'package:http/http.dart' as http;

class RepoComponent {
  final RepoRepository repoRepository;

  RepoComponent(http.Client client) : this.repoRepository = RepoRepository(GitHubApi(client));
}