import 'package:count_by_clock/constants/tick_position.dart';

enum Digits { zero, one, two, three, four, five, six, seven, eight, nine }

extension DigitExtentions on Digits {
  Digits get next => this == Digits.nine ? Digits.zero : Digits.values[this.index + 1];

  DoubleTickPosition get topLeft {
    switch (this) {
      case Digits.zero:
        return DoubleTickPosition.three_six;
      case Digits.one:
        return DoubleTickPosition.none;
      case Digits.two:
        return DoubleTickPosition.three;
      case Digits.three:
        return DoubleTickPosition.three;
      case Digits.four:
        return DoubleTickPosition.six;
      case Digits.five:
        return DoubleTickPosition.three_six;
      case Digits.six:
        return DoubleTickPosition.three_six;
      case Digits.seven:
        return DoubleTickPosition.three;
      case Digits.eight:
        return DoubleTickPosition.three_six;
      case Digits.nine:
        return DoubleTickPosition.three_six;
      default:
        return DoubleTickPosition.none;
    }
  }

  DoubleTickPosition get topRight {
    switch (this) {
      case Digits.zero:
        return DoubleTickPosition.six_nine;
      case Digits.one:
        return DoubleTickPosition.six;
      case Digits.two:
        return DoubleTickPosition.six_nine;
      case Digits.three:
        return DoubleTickPosition.six_nine;
      case Digits.four:
        return DoubleTickPosition.six;
      case Digits.five:
        return DoubleTickPosition.nine;
      case Digits.six:
        return DoubleTickPosition.nine;
      case Digits.seven:
        return DoubleTickPosition.six_nine;
      case Digits.eight:
        return DoubleTickPosition.six_nine;
      case Digits.nine:
        return DoubleTickPosition.six_nine;
      default:
        return DoubleTickPosition.none;
    }
  }

  DoubleTickPosition get centerLeft {
    switch (this) {
      case Digits.zero:
        return DoubleTickPosition.zero_six;
      case Digits.one:
        return DoubleTickPosition.none;
      case Digits.two:
        return DoubleTickPosition.three_six;
      case Digits.three:
        return DoubleTickPosition.three;
      case Digits.four:
        return DoubleTickPosition.zero_three;
      case Digits.five:
        return DoubleTickPosition.zero_three;
      case Digits.six:
        return DoubleTickPosition.zero_six;
      case Digits.seven:
        return DoubleTickPosition.none;
      case Digits.eight:
        return DoubleTickPosition.zero_three;
      case Digits.nine:
        return DoubleTickPosition.zero_three;
      default:
        return DoubleTickPosition.none;
    }
  }

  DoubleTickPosition get centerRight {
    switch (this) {
      case Digits.zero:
        return DoubleTickPosition.zero_six;
      case Digits.one:
        return DoubleTickPosition.zero_six;
      case Digits.two:
        return DoubleTickPosition.zero_nine;
      case Digits.three:
        return DoubleTickPosition.zero_nine;
      case Digits.four:
        return DoubleTickPosition.zero_six;
      case Digits.five:
        return DoubleTickPosition.nine_six;
      case Digits.six:
        return DoubleTickPosition.nine_six;
      case Digits.seven:
        return DoubleTickPosition.zero_six;
      case Digits.eight:
        return DoubleTickPosition.zero_nine;
      case Digits.nine:
        return DoubleTickPosition.zero_six;
      default:
        return DoubleTickPosition.none;
    }
  }

  DoubleTickPosition get bottomLeft {
    switch (this) {
      case Digits.zero:
        return DoubleTickPosition.zero_three;
      case Digits.one:
        return DoubleTickPosition.none;
      case Digits.two:
        return DoubleTickPosition.zero_three;
      case Digits.three:
        return DoubleTickPosition.three;
      case Digits.four:
        return DoubleTickPosition.none;
      case Digits.five:
        return DoubleTickPosition.three;
      case Digits.six:
        return DoubleTickPosition.zero_three;
      case Digits.seven:
        return DoubleTickPosition.none;
      case Digits.eight:
        return DoubleTickPosition.zero_three;
      case Digits.nine:
        return DoubleTickPosition.three;
      default:
        return DoubleTickPosition.none;
    }
  }

  DoubleTickPosition get bottomRight {
    switch (this) {
      case Digits.zero:
        return DoubleTickPosition.zero_nine;
      case Digits.one:
        return DoubleTickPosition.zero;
      case Digits.two:
        return DoubleTickPosition.nine;
      case Digits.three:
        return DoubleTickPosition.zero_nine;
      case Digits.four:
        return DoubleTickPosition.zero;
      case Digits.five:
        return DoubleTickPosition.zero_nine;
      case Digits.six:
        return DoubleTickPosition.zero_nine;
      case Digits.seven:
        return DoubleTickPosition.zero;
      case Digits.eight:
        return DoubleTickPosition.zero_nine;
      case Digits.nine:
        return DoubleTickPosition.zero_nine;
      default:
        return DoubleTickPosition.none;
    }
  }
}
