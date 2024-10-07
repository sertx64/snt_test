import 'package:snt_test/Domain/ProcessingApi_1s.dart';

Map numberkeyname = {};
Map keydebts = {};
String areaNumberResult = 'null';
String? passResult;
String? nameResult;
num debtResult = 0;
num debtAmountResult = 0;
num overpaymentResult = 0;
num penaltiesResult = 0;

void toCabinet() async {
  keydebts = await ProcessingApi1s().keyDebts();
  numberkeyname = await ProcessingApi1s().numberKeyName();
}

void toAreaNumber(String value) {
  String areaNumber = value;
  if (numberkeyname.containsKey(areaNumber)) {
    areaNumberResult = areaNumber;
    nameResult = numberkeyname[areaNumberResult][1];
    debtResult = keydebts[numberkeyname[areaNumberResult][0]][0];
    debtAmountResult = keydebts[numberkeyname[areaNumberResult][0]][1];
    overpaymentResult = keydebts[numberkeyname[areaNumberResult][0]][2];
    penaltiesResult = keydebts[numberkeyname[areaNumberResult][0]][3];
    print("Словарь содержит ключ $areaNumber");
  } else {
    areaNumberResult = 'null';
    print("Словарь не содержит ключ $areaNumber areaNumberResult = null");
  }


  print(nameResult);
}

void toPass(String value) {
  passResult = value;
}
