// ignore_for_file: library_private_types_in_public_api

class Strings {
  static const _PrimeNumberStrings primeNumber = _PrimeNumberStrings();
  static const _ProfileStrings profile = _ProfileStrings();
  static const _GeneralStrings general = _GeneralStrings();
}

class _PrimeNumberStrings {
  const _PrimeNumberStrings();

  String get bottomNavigationBarTitle => 'Prime Number';
  String get title => 'Prime Number Generator';
  String get description => 'Enter any positive integers';
  String get emptyPrimeNumber => 'Currently No Prime Number';
  String get lesserEndPointError =>
      'End point must not be lesser than start point';
  String get generateButtonTitle => 'Generate Numbers';
  String get clearButtonTitle => 'Clear';
  String get startPoint => 'Start Point';
  String get endPoint => 'End Point';
}

class _ProfileStrings {
  const _ProfileStrings();

  String get bottomNavigationBarTitle => 'Profile';
}

class _GeneralStrings {
  const _GeneralStrings();

  String get appBarTitle => 'Frisia App';
}
