import "package:hybrid_2/lucky.dart"; //Import the Lucky class from lib/Lucky.dart

void main(List<String> args) {
  for (String name in args) {
    //Call an instance of Lucky class.
    Lucky lucky = Lucky();

    //Capitalize the first letter of each name.
    String properName = name[0].toUpperCase() + name.substring(1).toLowerCase();

    print("Hello, $properName! Your lucky number is ${lucky.yourLuckyNumber}.");
  }
}
