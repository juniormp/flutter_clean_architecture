import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/application/wheater/retrieve_wheater_use_case.dart';
import 'package:flutter_clean_architecture/app/domain/wheater.dart';

class HomeController {
  final RetrieveWheaterUseCase retrieveWheaterUseCase =
      RetrieveWheaterUseCase();

  retrieveWheater() {
    retrieveWheaterUseCase.retrieveWheater();
  }

  ValueNotifier<Wheater> get wheater => retrieveWheaterUseCase.wheater;
}
