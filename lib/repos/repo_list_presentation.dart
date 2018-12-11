import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_client/repos/repo_list_bloc.dart';
import 'package:github_client/repos/repo_service_contaner.dart';

class RepoListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RepoListPageState();
}

class _RepoListPageState extends State<RepoListPage> {
  final RepoListBloc _bloc = RepoListBloc(RepoServiceContainer.instance().repoRepository);

  _RepoListPageState() {
    _bloc.dispatch(FetchRepoListEvent());
  }


  @override
  void dispose() {
    super.dispose();
    _bloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _bloc,
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