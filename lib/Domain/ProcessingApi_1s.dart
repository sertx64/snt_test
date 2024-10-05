import 'package:snt_test/Data/GetApi_1s.dart';

class ProcessingApi1s {
  //собираем json {номер_участка:[ключ_участка, ФИО];.....}
  Future<Map> numberKeyName() async {
    final Map ownersarea = await GetApi().ownersArea();
    final Map<String, List<String>> numberKeyNameResult = {};
    for (int i = 0; i < ownersarea["value"].length; i++) {
      numberKeyNameResult[ownersarea["value"][i]["НомерУчастка"]] = [
        ownersarea["value"][i]["Участок_Key"],
        ownersarea["value"][i]["ПредставлениеВладельцевУчастка"]
      ];
    }

    return numberKeyNameResult;
  }

  //собираем json {ключ_участка:["Всего", "СуммаДолга", "СуммаПереплаты", "СуммаПени"];.....}
  Future<Map> keyDebts() async {
    final Map debtbyarea = await GetApi().debtByArea();

    return debtbyarea;
  }
}
