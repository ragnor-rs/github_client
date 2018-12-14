import 'package:flutter/material.dart';
import 'package:github_client/main_component.dart';
import 'package:github_client/repos/repo_list_presentation.dart';

class MainComponentProvider extends InheritedWidget {
  final MainComponent mainComponent;

  MainComponentProvider({this.mainComponent, child}): super(child: child);

  @override
  bool updateShouldNotify(MainComponentProvider oldWidget) {
    return mainComponent != oldWidget.mainComponent;
  }

  static MainComponent of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(MainComponentProvider) as MainComponentProvider).mainComponent;
}

class GitHubClientApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainComponentProvider(
      mainComponent: MainComponentImpl(),
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
