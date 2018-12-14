import 'package:github_client/main_model.dart';
import 'package:github_client/repos/repo_model.dart';

class RepoComponent {
  final RepoRepository repoRepository;

  RepoComponent(GitHubApi gitHubApi) : this.repoRepository = RepoRepository(gitHubApi);
}