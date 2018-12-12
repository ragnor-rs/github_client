import 'package:flutter/widgets.dart';
import 'package:github_client/repos/repo_component.dart';

class MainComponent extends InheritedWidget {
  final RepoComponent repoComponent;

  MainComponent({@required this.repoComponent, @required child}) : super(child: child);

  @override
  bool updateShouldNotify(MainComponent oldWidget) {
    return false
      || repoComponent != oldWidget.repoComponent;
  }

  static MainComponent of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(MainComponent);
}