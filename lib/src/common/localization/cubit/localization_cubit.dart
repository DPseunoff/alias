import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';

class LocalizationCubit extends Cubit<Locale> {
  static const ruCode = 'ru';
  static const enCode = 'en';

  LocalizationCubit() : super(const Locale(ruCode));

  void toggleEnRu() {
    final nextState = state.languageCode == ruCode
        ? const Locale(enCode)
        : const Locale(ruCode);
    emit(nextState);
  }
}
