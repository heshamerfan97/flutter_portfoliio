import 'package:portfolio/modules/repositories/models/git_repository.dart';
import 'package:portfolio/shared/view/helper/export.dart';

import '../../../api/api.dart';

class GitRepositoriesRepository {
  final API _api;

  GitRepositoriesRepository({API? api}) : _api = api ?? API();

  Future<List<GitRepository>> getRepositories() async {
    return repositories;
  }

  final List<GitRepository> repositories = [
    GitRepository(
      title: "Flutter Google Maps Example",
      titleAr: "Flutter Google Maps Example",
      descriptionAr:
          "A Flutter application to demonstrate how to implement flutter google maps in a flutter application and perform advanced tasks on it like:\nDark-light mode, Normal/Custom Markers, Map Styling, Drawing Routes, Live Location and more",
      description:
          "A Flutter application to demonstrate how to implement flutter google maps in a flutter application and perform advanced tasks on it like:\nDark-light mode, Normal/Custom Markers, Map Styling, Drawing Routes, Live Location and more",
      image: Images.googleMapsFlutter,
      url: "https://github.com/heshamerfan97/flutter_google_maps_example",
    ),
    GitRepository(
      title: "Portfolio",
      titleAr: "Portfolio",
      descriptionAr:
          "A Flutter web app showcasing how to build a responsive portfolio website for various screen sizes and operating systems. This project features animations and a sleek design, highlighting Flutter's capabilities in creating versatile and visually appealing web applications.",
      description:
      "A Flutter web app showcasing how to build a responsive portfolio website for various screen sizes and operating systems. This project features animations and a sleek design, highlighting Flutter's capabilities in creating versatile and visually appealing web applications.",
      image: Images.dashtar,
      url: "https://github.com/heshamerfan97/portfoliio",
    ),
  ];
}
