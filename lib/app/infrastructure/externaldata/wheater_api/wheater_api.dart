import 'package:flutter_clean_architecture/app/domain/wheater.dart';
import 'package:flutter_clean_architecture/app/infrastructure/externaldata/client_http_service.dart';
import 'package:flutter_clean_architecture/app/infrastructure/externaldata/wheater_api/iwheater_api.dart';

class WheaterApi implements IWheaterApi {
  final ClientHttpService _client;

  WheaterApi(this._client);

  @override
  Future<Wheater> getWheater() async {
    var json = await _client.get(
        "http://apiadvisor.climatempo.com.br/api/v1/anl/synoptic/locale/BR?token=95a9cb1ae6b422e8d7b7a4fe634fb14f");
    Wheater model = Wheater.fromJson(json[0]);

    return model;
  }
}
