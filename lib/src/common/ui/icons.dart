import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';

class AppIcons {
  static const _iconPath = 'assets/icons/';

  /// * APP * ///
  static const _appPath = '${_iconPath}app/';
  static const _appIconPath = '${_appPath}app_icon.svg';
  static const _championPath = '${_appPath}champion.svg';

  /// * Common * ///
  static const _commonPath = '${_iconPath}common/';
  static const _alarmPath = '${_commonPath}alarm.svg';
  static const _arrowBackPath = '${_commonPath}arrow_back.svg';
  static const _checkPath = '${_commonPath}check.svg';
  static const _exitPath = '${_commonPath}exit.svg';
  static const _pausePath = '${_commonPath}pause.svg';
  static const _playPath = '${_commonPath}play.svg';

  /// * Lang * ///
  static const _langPath = '${_iconPath}lang/';
  static const _rusPath = '${_langPath}rus.svg';
  static const _engPath = '${_langPath}eng.svg';

  const AppIcons._();

  static SvgPicture appIcon({
    double? width,
    double? height,
    Color? color,
  }) =>
      _iconSized(
        _appIconPath,
        width: width,
        height: height,
        color: color,
      );

  static SvgPicture championIcon({
    double? width,
    double? height,
    Color? color,
  }) =>
      _iconSized(
        _championPath,
        width: width,
        height: height,
        color: color,
      );

  static SvgPicture alarmIcon({Color? color}) =>
      _icon24x24(_alarmPath, color: color);

  static SvgPicture arrowBackIcon({Color? color}) =>
      _icon24x24(_arrowBackPath, color: color);

  static SvgPicture checkIcon({Color? color}) =>
      _icon24x24(_checkPath, color: color);

  static SvgPicture exitIcon({Color? color}) =>
      _icon24x24(_exitPath, color: color);

  static SvgPicture pauseIcon({Color? color}) =>
      _icon24x24(_pausePath, color: color);

  static SvgPicture playIcon({Color? color}) =>
      _icon24x24(_playPath, color: color);

  static SvgPicture rusIcon({Color? color}) =>
      _icon24x24(_rusPath, color: color);

  static SvgPicture engIcon({Color? color}) =>
      _icon24x24(_engPath, color: color);

  static SvgPicture _icon24x24(String path, {Color? color}) => SvgPicture.asset(
        path,
        width: 24,
        height: 24,
        colorFilter:
            color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
      );

  static SvgPicture _iconSized(
    String path, {
    double? width,
    double? height,
    Color? color,
  }) =>
      SvgPicture.asset(
        path,
        width: width,
        height: height,
        colorFilter:
            color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
      );
}
