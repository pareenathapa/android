class SimpleInterestModel{
  double principle;
  double time;
  double rate;

  SimpleInterestModel({
    required this.principle,
    required  this.time,
    required  this.rate,
  });

  // Calculate
  double calculate(){
    return ((principle* time* rate) / 100);
  }
}