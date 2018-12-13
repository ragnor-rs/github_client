import 'package:flutter/material.dart';
import 'package:github_client/main_component.dart';
import 'package:github_client/repos/repo_component.dart';
import 'package:github_client/repos/repo_list_presentation.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(
      MyApp(new http.Client())
  );
}

class MyApp extends StatelessWidget {
  final RepoComponent _repoComponent;

  MyApp(http.Client client) : this._repoComponent = RepoComponent(client);

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
