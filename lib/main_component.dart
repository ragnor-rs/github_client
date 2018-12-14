import 'package:github_client/main_model.dart';
import 'package:github_client/repos/repo_component.dart';
import 'package:http/http.dart' as http;

abstract class MainComponent {
  RepoComponent get repoComponent;
}

class MainComponentImpl implements MainComponent {
  http.Client _httpClient;
  GitHubApi _gitHubApi;

  RepoComponent _repoComponent;

  MainComponentImpl() {
    _httpClient = http.Client();
    _gitHubApi = GitHubApi(httpClient);

    _repoComponent = RepoComponentImpl(gitHubApi);
  }

  get httpClient => _httpClient;
  get gitHubApi => _gitHubApi;

  @override
  get repoComponent => _repoComponent;
}