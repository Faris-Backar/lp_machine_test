import 'package:lp_machine_test/gen/assets.gen.dart';

class IntroScreenData {
  static List<IntroData> introList = [
    IntroData(
        title: "Cleaning Services",
        image: Assets.images.cleaningService.path,
        content:
            "Turn chaos into calm—experience the magic of a clean home, Clean home, happy heart—let us do the work for you"),
    IntroData(
        title: "Quality Work",
        image: Assets.images.qualityWork.path,
        content:
            "Clean home, happy heart—let us do the work for you, Your dream clean is just a tap away"),
    IntroData(
        title: "Professional Staff",
        image: Assets.images.professionalStaff.path,
        content:
            "Make cleaning a breeze—schedule your first service today, Revitalize your space with our expert cleaners")
  ];
}

class IntroData {
  final String title;
  final String image;
  final String content;

  IntroData({required this.title, required this.image, required this.content});
}
