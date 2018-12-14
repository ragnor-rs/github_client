import 'package:github_client/repos/repo_component.dart';
import 'package:github_client/repos/repo_model.dart';

import 'repo_model.dart';

class RepoComponentMock extends RepoComponent {
  RepoRepository _repoRepository = RepoRepositoryMock();

  @override
  RepoRepository get repoRepository => _repoRepository;
}