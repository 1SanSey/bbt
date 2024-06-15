// ignore_for_file: avoid_catching_errors, avoid_catches_without_on_clauses

import 'package:flutter/material.dart';

class ColorService {
  static Color avatarColor(String name) {
    try {
      final letter = name[3];
      final arrRu = [
        'в',
        'г',
        'п',
        'и',
        'н',
        'б',
        'я',
        'й',
        'р',
        'с',
        'д',
        'е',
        'о',
        'м',
        'х',
        'ц',
        'э',
        'ю',
        'ё',
        'т',
        'у',
        'а',
        'к',
        'л',
        'ч',
        'ш',
        'щ',
        'ф',
        'ж',
        'з',
      ];

      final indexLetter = arrRu.indexOf(letter);

      const List<Color> colors = [
        Color.fromARGB(255, 255, 161, 132),
        Color(0xFFFFD88D),
        Color.fromARGB(255, 255, 121, 159),
        Color(0xFFFFBC99),
        Color.fromARGB(255, 198, 255, 106),
      ];

      Color getColor() {
        if (indexLetter <= 6) {
          return colors.first;
        } else if (indexLetter >= 7 && indexLetter <= 12) {
          return colors[1];
        } else if (indexLetter >= 13 && indexLetter <= 18) {
          return colors[2];
        } else if (indexLetter >= 19 && indexLetter <= 24) {
          return colors[3];
        } else {
          return colors[4];
        }
      }

      return getColor();
    } catch (e) {
      return const Color(0xFFCABDFF);
    }
  }
}
