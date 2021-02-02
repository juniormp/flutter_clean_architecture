import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/domain/wheater.dart';
import 'package:flutter_clean_architecture/app/infrastructure/externaldata/wheater_api/iwheater_api.dart';

class RetrieveWheaterUseCase {
  final IWheaterApi _wheaterApi;
  final _wheater = ValueNotifier<Wheater>(null);

  RetrieveWheaterUseCase({wheaterApi}) : _wheaterApi = wheaterApi;

  retrieveWheater() async {
    _wheater.value = await _wheaterApi.getWheater();
  }

  ValueNotifier<Wheater> get wheater => _wheater;
}
