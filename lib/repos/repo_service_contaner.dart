import 'package:github_client/repos/repo_model.dart';

class RepoServiceContainer {
  GitHubApi _gitHubApi;
  RepoRepository _repoRepository;

  RepoServiceContainer() {
    _gitHubApi = GitHubApi();
    _repoRepository = RepoRepository(_gitHubApi);
  }

  static var _instance = RepoServiceContainer();

  static RepoServiceContainer instance() => _instance;

  get gitHubApi => _gitHubApi;
  get repoRepository => _repoRepository;
}