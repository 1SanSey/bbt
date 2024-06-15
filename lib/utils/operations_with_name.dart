import 'package:bbt/service_locator.dart';
import 'package:logger/logger.dart';

class OperationsWithName {
  static String getInitials(String name) {
    try {
      final nameList = protectFromSpace(name.split(' '));
      if (nameList.length == 1) {
        return nameList.first[0];
      }

      String result = '';
      if (nameList.first.isNotEmpty) {
        result = nameList.first[0];
      }

      if (nameList[1].isNotEmpty) {
        result += getFirstSymbol(nameList[1]);
      } else if (nameList[2].isNotEmpty) {
        result += getFirstSymbol(nameList[2]);
      } else {
        result += nameList.first[0];
      }

      return result.toUpperCase();
    } on Object catch (e) {
      sl<Logger>().e('getInitials error $e');

      return '';
    }
  }
}

List<String> protectFromSpace(List<String> list) {
  final List<String> newList = [];
  for (final element in list) {
    if (element != '') {
      newList.add(element);
    }
  }

  return newList;
}

String getFirstSymbol(String name) {
  if (name[0] == ' ' && name[1] != ' ') {
    return name[1];
  } else if (name[0] == ' ' && name[1] == ' ' && name[2] != ' ') {
    return name[2];
  }

  return name[0];
}
