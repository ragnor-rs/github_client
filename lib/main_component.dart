import 'package:github_client/main_model.dart';
import 'package:github_client/repos/repo_component.dart';
import 'package:http/http.dart' as http;

class MainComponent {
  http.Client _httpClient;
  GitHubApi _gitHubApi;

  RepoComponent _repoComponent;

  MainComponent() {
    _httpClient = http.Client();
    _gitHubApi = GitHubApi(_httpClient);

    _repoComponent = RepoComponent(_gitHubApi);
  }

  get httpClient => _httpClient;
  get gitHubApi => _gitHubApi;

  get repoComponent => _repoComponent;
}