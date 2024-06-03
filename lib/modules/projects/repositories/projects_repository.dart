import 'package:portfolio/modules/projects/models/project.dart';
import 'package:portfolio/shared/view/helper/export.dart';

import '../../../api/api.dart';

class ProjectsRepository {
  final API _api;

  ProjectsRepository({API? api}) : _api = api ?? API();

  Future<List<Project>> getProjects() async {
    return projects;
  }

  final List<Project> projects = [
    const Project(
      title: "Jeel: Kids Early Education",
      titleAr: "Jeel: Kids Early Education",
      description:
      "A generation application that aims to help you build a new world and a unique generation for your child from the age of three to nine years.\nWhat does the Jeel app offer to young children?\nSeries, stories and songs with and without music, games and other fun educational educational videos and the following practical activities after each episode your child watches.",
      descriptionAr:
      "A generation application that aims to help you build a new world and a unique generation for your child from the age of three to nine years.\nWhat does the Jeel app offer to young children?\nSeries, stories and songs with and without music, games and other fun educational educational videos and the following practical activities after each episode your child watches.",
      image: Images.jeel,
      androidUrl: "https://play.google.com/store/apps/details?id=com.jeelapp.android",
      iosUrl: "https://apps.apple.com/eg/app/jeel-%D8%AC%D9%8A%D9%84/id1489596085",
    ),
    const Project(
      title: "Sporsepeti",
      titleAr: "Sporsepeti",
      description:
      "Sporsepeti is a digital platform for booking sports activities. It is very easy to use and allows you to do sports activities with different people. By participating in trainings, events, tournaments and leagues in sports branches such as basketball, volleyball, gokart, etc., it brings you together with +50 thousand sports fans in sports communities. Download the app with free registration and get ready to do the sports you love.",
      descriptionAr:
      "Sporsepeti is a digital platform for booking sports activities. It is very easy to use and allows you to do sports activities with different people. By participating in trainings, events, tournaments and leagues in sports branches such as basketball, volleyball, gokart, etc., it brings you together with +50 thousand sports fans in sports communities. Download the app with free registration and get ready to do the sports you love.",
      image: Images.sporsepeti,
      androidUrl: "https://play.google.com/store/apps/details?id=com.springyuniverse.sports_app.sm_mobile",
      iosUrl: "https://apps.apple.com/eg/app/sporsepeti/id1628877345",
    ),
    const Project(
      title: "Stella Stays",
      titleAr: "Stella Stays",
      description:
          "scape the ordinary with Stella Stays - a redefined hospitality experience with a collection of the finest vacation homes around the world. Clean, modern and spacious for the new age of travellers.\n\nA cozy apartment in the city for the night or a secluded beachfront villa for a month, each home is professionally managed and designed to deliver outstanding service, cleanliness, comfort and style.",
      descriptionAr:
          "scape the ordinary with Stella Stays - a redefined hospitality experience with a collection of the finest vacation homes around the world. Clean, modern and spacious for the new age of travellers.\n\nA cozy apartment in the city for the night or a secluded beachfront villa for a month, each home is professionally managed and designed to deliver outstanding service, cleanliness, comfort and style.",
      image: Images.stellaStays,
      androidUrl: "https://play.google.com/store/apps/details?id=ai.stays.stella.guestapp.release",
      iosUrl: "https://apps.apple.com/eg/app/stella-stays/id1568217403",
    ),
    const Project(
      title: "Maestro HCM",
      titleAr: "Maestro HCM",
      description:
          "MAESTRO Mobile App provides the capability of submitting various Self Service requests via mobile. In addition to managing all Workflow pending requests in case you have subordinates. You can; moreover, check some graphical statistics for you or any of your subordinates. MAESTRO Mobile App will empower your employees to sign In/Out via Face Recognition or GPS Location, not only at company premises, also at various Project-based locations, where you need to manage Attendance.",
      descriptionAr:
          "MAESTRO Mobile App provides the capability of submitting various Self Service requests via mobile. In addition to managing all Workflow pending requests in case you have subordinates. You can; moreover, check some graphical statistics for you or any of your subordinates. MAESTRO Mobile App will empower your employees to sign In/Out via Face Recognition or GPS Location, not only at company premises, also at various Project-based locations, where you need to manage Attendance.",
      image: Images.maestroHCM,
      androidUrl: "https://play.google.com/store/apps/details?id=globalsoft.com.maestro",
      iosUrl: "https://apps.apple.com/eg/app/maestro-hcm/id1503127348",
    ),
    const Project(
      title: "Amal Al-Muslim",
      titleAr: "Amal Al-Muslim",
      description: "Amal Al-Muslim is an application contains all what a muslim needs.\n- Prayer Times, Quran, Quran Mojawd, Hajj, Qibla direction\n- Hijri calendar, Asmaa Allah El-Hosna, Azkar, Fatwa\n- Islamic questions, Nearest Mosques to you, Nearest Halal restaurants to you",
      descriptionAr: "",
      image: Images.islamicApp,
      androidUrl: "https://play.google.com/store/apps/details?id=globalsoft.com.muslim_app.muslim_app",
      iosUrl: "https://apps.apple.com/eg/app/amal-al-muslim/id6443778932",
    ),
    const Project(
      title: "ClueRush",
      titleAr: "ClueRush",
      description:
      "Cluerush is an outdoor murder mystery event. The riddles and tasks in the event are specifically adapted to different cities of the world. There are virtual witnesses and suspects to be interrogated and evidence to be collected. You will eliminate the suspects and murder weapons until you find the criminal.",
      descriptionAr:
      "Cluerush is an outdoor murder mystery event. The riddles and tasks in the event are specifically adapted to different cities of the world. There are virtual witnesses and suspects to be interrogated and evidence to be collected. You will eliminate the suspects and murder weapons until you find the criminal.",
      image: Images.cluerush,
      androidUrl: "https://play.google.com/store/apps/details?id=com.cluerush.app",
      iosUrl: "https://apps.apple.com/eg/app/cluerush/id1610308095",
    ),
  ];
}
