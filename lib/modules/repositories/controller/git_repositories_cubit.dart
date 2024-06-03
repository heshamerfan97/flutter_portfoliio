
import 'package:bloc/bloc.dart';
import 'package:portfolio/modules/repositories/repositories/git_repositories_repository.dart';

import '../models/git_repository.dart';

class GitRepositoriesCubit extends Cubit<List<GitRepository>> {
  GitRepositoriesCubit({GitRepositoriesRepository? gitRepositoriesRepository})
      : _gitRepositoriesRepository = gitRepositoriesRepository ?? GitRepositoriesRepository(),
        super([]);

  final GitRepositoriesRepository _gitRepositoriesRepository;

  Future<void> loadRepos() async {
    final repos = await _gitRepositoriesRepository.getRepositories();
    emit(repos);
  }
}
