import "dart:io";
import "dart:math";

class Lucky {
  //Declare a final variable to store the lucky number.
  final int yourLuckyNumber;

  //Constructor to initialize the lucky number.
  Lucky() : yourLuckyNumber = _findLuckyNumber();

  //The actual method that generates the lucky number based on environment variables.
  static int _findLuckyNumber() {
    int min = int.parse(Platform.environment["MIN"] ?? "10");
    int max = int.parse(Platform.environment["MAX"] ?? "100");

    Random random = Random();
    return min + random.nextInt(max - min + 1);
  }
}
