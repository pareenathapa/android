class CircleModel {
  final double radius;
  static const double pi = 3.14; // This line is incorrect
  CircleModel({
    required this.radius,
  });
  double area() {
    return 3.14 * radius * radius;
  }
}
 