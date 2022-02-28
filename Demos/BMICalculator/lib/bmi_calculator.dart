class BMICalculator {
  int height;
  int weightInlbs;
  int weightInKgs;
  int age;
  String gender;

  BMICalculator({this.height, this.weightInlbs, this.age, this.gender});

  double calculate() {
    // Formula for calculating a persons bmi
    double meters = height / 100;

    // kg = ibs / 2.2046
    weightInKgs = (weightInlbs / 2.2046).round();

    if (age < 18 || age > 65){
      return 0.0;
    }

    return weightInKgs / (meters * meters);
  }
}
