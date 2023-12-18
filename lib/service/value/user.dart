import 'package:test_software_developer/model/age.dart';

AgeModel getAge(DateTime birthDate) {
  DateTime currentDate = DateTime.now();

  int years = currentDate.year - birthDate.year;
  int months = currentDate.month - birthDate.month;
  int days = currentDate.day - birthDate.day;

  if (months < 0 || (months == 0 && days < 0)) {
    years--;
    months += (months < 0 ? 12 : 0);
  }

  if (days < 0) {
    final int daysInLastMonth =
        DateTime(currentDate.year, currentDate.month - 1, birthDate.day)
            .difference(currentDate)
            .inDays;
    months--;
    days += daysInLastMonth;
  }

  if (months < 0) {
    months += 12;
  }

  return AgeModel(year: years, month: months, day: days);
}

String getZodiak(DateTime time) {
  if ((time.month == 3 && time.day >= 21) ||
      (time.month == 4 && time.day <= 19)) {
    return 'Aries';
  } else if ((time.month == 4 && time.day >= 20) ||
      (time.month == 5 && time.day <= 20)) {
    return 'Taurus';
  } else if ((time.month == 5 && time.day >= 21) ||
      (time.month == 6 && time.day <= 20)) {
    return 'Gemini';
  } else if ((time.month == 6 && time.day >= 21) ||
      (time.month == 7 && time.day <= 22)) {
    return 'Cancer';
  } else if ((time.month == 7 && time.day >= 23) ||
      (time.month == 8 && time.day <= 22)) {
    return 'Leo';
  } else if ((time.month == 8 && time.day >= 23) ||
      (time.month == 9 && time.day <= 22)) {
    return 'Virgo';
  } else if ((time.month == 9 && time.day >= 23) ||
      (time.month == 10 && time.day <= 22)) {
    return 'Libra';
  } else if ((time.month == 10 && time.day >= 23) ||
      (time.month == 11 && time.day <= 21)) {
    return 'Scorpio';
  } else if ((time.month == 11 && time.day >= 22) ||
      (time.month == 12 && time.day <= 21)) {
    return 'Sagittarius';
  } else if ((time.month == 12 && time.day >= 22) ||
      (time.month == 1 && time.day <= 19)) {
    return 'Capricorn';
  } else if ((time.month == 1 && time.day >= 20) ||
      (time.month == 2 && time.day <= 18)) {
    return 'Aquarius';
  } else {
    return 'Pisces';
  }
}
