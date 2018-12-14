import 'package:github_client/main_model.dart';
import 'package:github_client/repos/repo_model.dart';

abstract class RepoComponent {
  RepoRepository get repoRepository;
}

class RepoComponentImpl implements RepoComponent {
  RepoRepository _repoRepository;

  RepoComponentImpl(GitHubApi gitHubApi) {
    _repoRepository = RepoRepositoryImpl(gitHubApi);
  }

  @override
  get repoRepository => _repoRepository;
}