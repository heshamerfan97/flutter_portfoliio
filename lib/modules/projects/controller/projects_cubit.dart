import 'package:bloc/bloc.dart';
import 'package:portfolio/modules/projects/repositories/projects_repository.dart';

import '../models/project.dart';

class ProjectsCubit extends Cubit<List<Project>> {
  ProjectsCubit({ProjectsRepository? projectsRepository})
      : _projectsRepository = projectsRepository ?? ProjectsRepository(),
        super([]);

  final ProjectsRepository _projectsRepository;

  Future<void> loadProjects() async {
    final projects = await _projectsRepository.getProjects();
    emit(projects);
  }
}
