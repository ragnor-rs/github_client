import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_client/main_presentation.dart';
import 'package:github_client/repos/repo_list_bloc.dart';

class RepoListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RepoListPageState();
}

class _RepoListPageState extends State<RepoListPage> {
  @override
  Widget build(BuildContext context) {
    var mainComponent = MainComponentProvider.of(context);
    return BlocBuilder(
      bloc: RepoListBloc(mainComponent.repoComponent),
      builder: (BuildContext context, RepoListState state) {
        if (state.isLoading) {
          return Center(
            child: Text("Loading..."),
          );
        } else if (state.isError) {
          return Center(
            child: Text("Error!"),
          );
        } else {
          return ListView(
            children: state.result.map((repo) => Text(repo.name)).toList(),
          );
        }
      },
    );
  }
}