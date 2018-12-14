import 'package:flutter/material.dart';
import 'package:github_client/main_model.dart';
import 'package:github_client/main_component.dart';
import 'package:github_client/repos/repo_list_presentation.dart';
import 'package:github_client/repos/repo_component.dart';

void main() {
  var gitHubApi = new GitHubApi();
  runApp(
      MyApp(
          RepoComponent(gitHubApi)
      )
  );
}

class MyApp extends StatelessWidget {
  final RepoComponent _repoComponent;

  MyApp(this._repoComponent);

  @override
  Widget build(BuildContext context) {
    return MainComponent(
      repoComponent: _repoComponent,
      child: MaterialApp(
          title: 'Flutter Demo',
          home: Scaffold(
            appBar: AppBar(
              title: Text("GitHub client"),
            ),
            body: RepoListPage(),
          )
      ),
    );
  }
}
