import 'dart:math';

enum SingleTickPosition { none, zero, three, six, nine }
enum DoubleTickPosition {
  none,
  zero,
  zero_three,
  zero_six,
  zero_nine,
  three_zero,
  three,
  three_six,
  three_nine,
  six_zero,
  six_three,
  six,
  six_nine,
  nine_zero,
  nine_three,
  nine_six,
  nine,
}

extension SingleTickPositionExtension on SingleTickPosition {
  int get degree {
    switch (this) {
      case SingleTickPosition.zero:
        return 0;
      case SingleTickPosition.three:
        return 90;
      case SingleTickPosition.six:
        return 180;
      case SingleTickPosition.nine:
        return 270;
      default:
        return 225;
    }
  }

  double get angleValue => this.degree.angleValue;
}

extension DoubleTickPositionExtension on DoubleTickPosition {
  DoubleTickPosition get next => this == DoubleTickPosition.nine ? DoubleTickPosition.zero : DoubleTickPosition.values[this.index + 1];

  SingleTickPosition get hp1 {
    String str = this.toString().split('.')[1];
    String hp1Str = str.contains('_') ? str.split('_')[0] : str;
    return SingleTickPosition.values.firstWhere((e) => e.toString().split('.')[1] == hp1Str);
  }

  SingleTickPosition get hp2 {
    String str = this.toString().split('.')[1];
    String hp2Str = str.contains('_') ? str.split('_')[1] : str;
    return SingleTickPosition.values.firstWhere((element) => element.toString().split('.')[1] == hp2Str);
  }
}

extension AngleConverterExtention on int {
  double get angleValue => pi / 180 * this;
}
