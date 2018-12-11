import 'package:bloc/bloc.dart';
import 'package:github_client/repos/repo_model.dart';

class RepoListBloc extends Bloc<FetchRepoListEvent, RepoListState> {
  final RepoRepository _repository;

  RepoListBloc(this._repository);

  @override
  RepoListState get initialState => RepoListState.initial();

  @override
  Stream<RepoListState> mapEventToState(RepoListState state, FetchRepoListEvent event) async* {
    try {
      final result = await _repository.getRepoList();
      yield RepoListState.success(result);
    } catch (_) {
      yield RepoListState.failure();
    }
  }
}

class FetchRepoListEvent {}

class RepoListState {
  final bool isLoading;
  final bool isError;
  final List<Repo> result;

  RepoListState(this.isLoading, this.isError, this.result);

  factory RepoListState.initial() => RepoListState(true, false, null);

  factory RepoListState.success(List<Repo> result) => RepoListState(false, false, result);

  factory RepoListState.failure() => RepoListState(false, true, null);
}