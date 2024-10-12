import 'package:snt_test/Domain/ProcessingApi_1s.dart';

void toAreaNumber(String value) {
  ForCabinet.areaNum = value;
}

void toPass(String value) {
  ForCabinet.pass = value;
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
  static String areaNum = '';
  static String areaNumberResult = 'null';
  static String nameResult = '';
  static num debtResult = 0;
  static num debtAmountResult = 0;
  static num overpaymentResult = 0;
  static num penaltiesResult = 0;
  static String pass = '';
  String? keyResult;

  void buildCabinet() {
    String areaNumber = areaNum;
    Map numberkeyname = ToCabinet.numberkeyname;
    Map keydebts = ToCabinet.keydebts;
    if (numberkeyname.containsKey(areaNumber)) {
      areaNumberResult = areaNumber;
      nameResult = numberkeyname[areaNumberResult][1];
      keyResult = numberkeyname[areaNumberResult][0];
      debtResult = keydebts[numberkeyname[areaNumberResult][0]][0];
      debtAmountResult = keydebts[numberkeyname[areaNumberResult][0]][1];
      overpaymentResult = keydebts[numberkeyname[areaNumberResult][0]][2];
      penaltiesResult = keydebts[numberkeyname[areaNumberResult][0]][3];
    } else {
      areaNumberResult = 'null';
    }
    if (keyResult != '$pass-fb72-11ee-9da8-fa163e68cb1a') {
      areaNumberResult = 'null';
    }
    print(keyResult);
  }
}
