class AppConstants {
  static const Map<int, (String, String, String)> category = {
    0: AppCategories.all,
    1: AppCategories.small,
    2: AppCategories.medium,
    3: AppCategories.big,
    4: AppCategories.mahabig,
    5: AppCategories.bg,
    6: AppCategories.sb,
    7: AppCategories.cc,
    8: AppCategories.set,
    9: AppCategories.culinary,
    10: AppCategories.pl,
    11: AppCategories.other,
  };

  static const List<String> imagesList = [
    'assets/images/slides/1_quote.jpg',
    'assets/images/slides/2_quote.jpg',
    'assets/images/slides/3_quote.jpg',
  ];

  static const String bbtLogo = 'assets/images/logo/bbt_logo.webp';
  static const String bbtLogoDark = 'assets/images/logo/bbt_logo_dark.webp';
  static const String noImage = 'https://bbt-kirov.ru/images/no-image.jpg';
}

class AppCategories {
  static const (String, String, String) all = ('ВСЕ КНИГИ', 'Все книги', 'all');
  static const (String, String, String) small =
      ('МАЛЕНЬКИЕ\n(< 150 стр.)', 'Маленькие книги', 'small');
  static const (String, String, String) medium =
      ('СРЕДНИЕ\n(150-299 стр.)', 'Средние книги', 'medium');
  static const (String, String, String) big = ('БОЛЬШИЕ\n(300-499 стр.)', 'Большие книги', 'big');
  static const (String, String, String) mahabig =
      ('МАХАБОЛЬШИЕ\n(> 500 стр.)', 'Махабольшие книги', 'maha big');
  static const (String, String, String) bg = ('БХАГАВАД-ГИТА', 'Бхагавад-гита', 'Бхагавад-гита');
  static const (String, String, String) sb =
      ('ШРИМАД\nБХАГАВАТАМ', 'Шримад Бхагаватам', 'Шримад Бхагаватам');
  static const (String, String, String) cc =
      ('ШРИ ЧАЙТАНЬЯ\nЧАРИТАМРИТА', 'Шри Чайтанья Чаритамрита', 'Чайтанья Чаритамрита');
  static const (String, String, String) set = ('КОМПЛЕКТЫ', 'Комплекты', 'set');
  static const (String, String, String) culinary = ('КУЛИНАРНЫЕ', 'Кулинарные', 'culinary');
  static const (String, String, String) pl =
      ('ПРАБХУПАДА\nЛИЛАМРИТА', 'Прабхупада Лиламрита', 'Прабхупада Лиламрита');
  static const (String, String, String) other = ('ПРОЧИЕ', 'Прочие', 'other');
}
