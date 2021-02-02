import 'package:flutter_clean_architecture/app/domain/wheater.dart';

abstract class IWheaterApi {
  Future<Wheater> getWheater();
}
