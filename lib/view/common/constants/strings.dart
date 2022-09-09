// ignore_for_file: library_private_types_in_public_api

class Strings {
  static const _PrimeNumberStrings primeNumber = _PrimeNumberStrings();
  static const _ProfileStrings profile = _ProfileStrings();
  static const _GeneralStrings general = _GeneralStrings();
}

class _PrimeNumberStrings {
  const _PrimeNumberStrings();

  String get bottomNavigationBarTitle => 'Prime Number';
}

class _ProfileStrings {
  const _ProfileStrings();

  String get bottomNavigationBarTitle => 'Profile';
}

class _GeneralStrings {
  const _GeneralStrings();

  String get appBarTitle => 'Frisia App';
}
