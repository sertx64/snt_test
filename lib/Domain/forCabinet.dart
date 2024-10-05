import 'package:snt_test/Domain/ProcessingApi_1s.dart';

String? areaNumberResult;
String? passResult;
String? nameResult;
num? debtResult;
num? debtAmountResult;
num? overpaymentResult;
num? penaltiesResult;

void toAreaNumber(String value) async {
  areaNumberResult = value;
  Map keydebts = await ProcessingApi1s().keyDebts();
  Map numberkeyname = await ProcessingApi1s().numberKeyName();
  nameResult = await numberkeyname[areaNumberResult][1];
  debtResult = await keydebts[numberkeyname[areaNumberResult][0]][0];
  debtAmountResult = await keydebts[numberkeyname[areaNumberResult][0]][1];
  overpaymentResult = await keydebts[numberkeyname[areaNumberResult][0]][2];
  penaltiesResult = await keydebts[numberkeyname[areaNumberResult][0]][3];
}

void toPass(String value) {
  passResult = value;
}

void toCabinet() {}
