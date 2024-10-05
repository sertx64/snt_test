import 'package:dio/dio.dart';

class GetApi {
  Future<Map> debtByArea() async {
    final response = await Dio().get(
        'https://odata.user:UjylehFc!@1cfresh.com/a/agp/2479239/odata/standard.odata/InformationRegister_ЗадолженностьПоУчасткам?\$format=json');

    return response.data;
  }

  Future<Map> ownersArea() async {
    final response = await Dio().get(
        'https://odata.user:UjylehFc!@1cfresh.com/a/agp/2479239/odata/standard.odata/Catalog_ВладельцыУчастков?\$format=json');

    return response.data;
  }
}
