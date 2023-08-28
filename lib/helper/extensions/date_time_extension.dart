extension DateTimeExtension on DateTime {
  /// returns true if any of the property is not equals
  /// year != year
  /// month != month
  /// day != day
  /// it works like DateTime(Object) != DateTime(otherObject)
  bool checkNotEqualityForOnlyYearMonthDay(DateTime other) {
    return year != other.year || month != other.month || day != other.day;
  }

  bool isEqualTo(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  bool isBeforeCheck(DateTime other) {
    if (year < other.year) {
      return true;
    } else if (year == other.year && month < other.month) {
      return true;
    } else if (year == other.year && month == other.month && day < other.day) {
      return true;
    } else {
      return false;
    }
  }
}
