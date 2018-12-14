import 'package:github_client/main_model.dart';
import 'package:github_client/repos/repo_model.dart';

class RepoComponent {
  RepoRepository _repoRepository;

  RepoComponent(GitHubApi gitHubApi) {
    _repoRepository = RepoRepository(gitHubApi);
  }

  get repoRepository => _repoRepository;
}