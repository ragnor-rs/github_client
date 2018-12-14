import 'package:github_client/main_component.dart';
import 'package:github_client/repos/repo_component.dart';

import 'repos/repo_component.dart';

class MainComponentMock implements MainComponent {
  RepoComponent _repoComponent;

  MainComponentMock() {
    _repoComponent = RepoComponentMock();
  }

  @override
  RepoComponent get repoComponent => _repoComponent;
}
