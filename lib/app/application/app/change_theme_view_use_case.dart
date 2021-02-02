import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/domain/app_config.dart';
import 'package:flutter_clean_architecture/app/infrastructure/repository/interfaces/local_storage.dart';
import 'package:flutter_clean_architecture/app/infrastructure/repository/shared_local_storage.dart';

class ChangeThemeViewUseCase {
  final ILocalStorage _storage = SharedLocalStorage();
  final AppConfig _appConfig = AppConfig();

  Future init() async {
    await _storage.gets('isDark').then((value) {
      if (value != null) _appConfig.themeSwitch.value = value;
    });
  }

  changeTheme(value) {
    _appConfig.themeSwitch.value = value;
    _storage.put('isDark', value);
  }

  bool get isDark => _appConfig.themeSwitch.value;

  ValueNotifier<bool> get getThemeSwitch => _appConfig.themeSwitch;
}
