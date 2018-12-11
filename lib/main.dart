import 'package:flutter/material.dart';
import 'package:github_client/repos/repo_list_presentation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("GitHub client"),
        ),
        body: RepoListPage(),
      )
    );
  }
}
