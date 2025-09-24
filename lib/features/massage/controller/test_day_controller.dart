import 'package:get/get.dart';

class DaysController extends GetxController {
  // সব দিনের নাম
  final days = const [
    "Saturday",
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
  ];

  // সিলেক্টেড দিনের লিস্ট
  final selectedDays = <String>[].obs;

  // Toggle select/unselect
  void toggleDay(String day) {
    if (selectedDays.contains(day)) {
      selectedDays.remove(day);
    } else {
      selectedDays.add(day);
    }
  }


}
