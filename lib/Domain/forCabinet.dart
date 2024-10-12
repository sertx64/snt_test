import 'package:snt_test/Domain/ProcessingApi_1s.dart';

void toAreaNumber(String value) {
  ForCabinet().areaNumber(value);
}

class ToCabinet {
  static Map numberkeyname = {};
  static Map keydebts = {};

  void toCabinet() async {
    keydebts = await ProcessingApi1s().keyDebts();
    numberkeyname = await ProcessingApi1s().numberKeyName();
  }
}

class ForCabinet {
  static String areaNumberResult = 'null';
  static String nameResult = '';
  static num debtResult = 0;
  static num debtAmountResult = 0;
  static num overpaymentResult = 0;
  static num penaltiesResult = 0;

  void areaNumber(String value) {
    String areaNumber = value;
    Map numberkeyname = ToCabinet.numberkeyname;
    Map keydebts = ToCabinet.keydebts;
    if (numberkeyname.containsKey(areaNumber)) {
      areaNumberResult = areaNumber;
      nameResult = numberkeyname[areaNumberResult][1];
      debtResult = keydebts[numberkeyname[areaNumberResult][0]][0];
      debtAmountResult = keydebts[numberkeyname[areaNumberResult][0]][1];
      overpaymentResult = keydebts[numberkeyname[areaNumberResult][0]][2];
      penaltiesResult = keydebts[numberkeyname[areaNumberResult][0]][3];
    } else {
      areaNumberResult = 'null';
    }
  }
}
