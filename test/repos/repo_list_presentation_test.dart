import 'package:flutter_test/flutter_test.dart';
import 'package:github_client/repos/repo_list_presentation.dart';
import 'package:mockito/mockito.dart';

import '../main_presentation.dart';

void main() {
  testWidgets('Repo list loads items', (WidgetTester tester) async {
    var widget = RepoListPage();
    await tester.pumpWidget(
        makeWidgetTestable(widget)
    );
    verify(mainComponent.repoComponent.repoRepository.getRepoList()).called(1);
  });
}

