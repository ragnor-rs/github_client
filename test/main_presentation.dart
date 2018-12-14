import 'package:flutter/material.dart';
import 'package:github_client/main_component.dart';
import 'package:github_client/main_presentation.dart';

import 'main_component.dart';

final MainComponent mainComponent = MainComponentMock();

MainComponentProvider makeWidgetTestable(Widget widget) {
  return MainComponentProvider(
    mainComponent: mainComponent,
    child: MaterialApp(home: widget),
  );
}
