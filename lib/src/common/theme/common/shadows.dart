import 'package:flutter/cupertino.dart';

import 'colors.dart';

abstract class AppShadows {
  static final mainLight = BoxShadow(
    offset: const Offset(0, 4),
    blurRadius: 16,
    color: AppColors.everBlack.withOpacity(0.12),
  );

  static final footerLight = BoxShadow(
    offset: const Offset(0, -2),
    blurRadius: 16,
    color: AppColors.everBlack.withOpacity(0.25),
  );

  static final headerLight = BoxShadow(
    offset: const Offset(0, 2),
    blurRadius: 16,
    color: AppColors.everBlack.withOpacity(0.25),
  );

  const AppShadows._();
}
