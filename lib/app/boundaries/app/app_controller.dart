import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/application/app/change_theme_view_use_case.dart';

class AppController {
  static final AppController instance = AppController._();
  final ChangeThemeViewUseCase _changeThemeViewUseCase =
      ChangeThemeViewUseCase();

  AppController._() {
    _changeThemeViewUseCase.init();
  }

  bool get isDark => _changeThemeViewUseCase.isDark;

  ValueNotifier<bool> get getThemeSwitch =>
      _changeThemeViewUseCase.getThemeSwitch;

  changeTheme(value) {
    _changeThemeViewUseCase.changeTheme(value);
  }
}
