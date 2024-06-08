
enum Day {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday
}

class Week {
  static String getMessage(Day day) {
    switch (day) {
      case Day.monday:
        return 'Monday is a busy day!';
      case Day.tuesday:
        return 'Tuesday is a productive day!';
      case Day.wednesday:
        return 'Wednesday is a hump day!';
      case Day.thursday:
        return 'Thursday is almost Friday!';
      case Day.friday:
        return 'Friday is a happy day!';
      case Day.saturday:
        return 'Saturday is a relaxing day!';
      case Day.sunday:
        return 'Sunday is a day of rest!';
      default:
        return 'Unknown day!';
    }
  }
}