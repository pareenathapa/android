class ArithmeticModel {
  final int first;
  final int second;

  ArithmeticModel({
    required this.first,
    required this.second,
  });

  //Add
  int add(){
    return first+second;
  }

  //sub
   int sub(){
    return first-second;
  }
}