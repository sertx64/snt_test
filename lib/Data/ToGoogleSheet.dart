import 'package:gsheets/gsheets.dart';

const _credentials = r'''
{
  "type": "service_account",
  "project_id": "snttest",
  "private_key_id": "c9fd8ec12e489c3ee43c23ff3308fa3de997a263",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQDOvlMupc4Oz9p8\nPt1QMOv+D8ZqsafjPW2gqVYJ/0hxCtb09CC21VmbfH7XaauoPqr8aSpD9arp9Nxg\ni+aDgpqF2dARlMTn0QMdF87XlcaVbX877Kc1JU6Zvbt8MaJ0KQ/7lbDfsqIhixdA\nh+UzDetp54Jm8NYG7D0mAxEPiuuXONeHpCENQX3RfxWKqDpxLOq89Yz+3zc8AGIL\nW4EnbwE+2erQSWnTEpM3QPiWnepfU8EuTKY5xtT+nz9zTERHaZpgqqcx2QBu4rTi\nWbfZ2inM315knLJGqjMGiuoKWzxWDgbE1e/H6e99ZDQwuO+WkzjqAPf//XB3/+cu\nd8P65mqjAgMBAAECggEATxoNE5UG4S3v54fZ/5uoP53jieENXmmbb1Q7Ajo1imLe\nWfyqI6o/zbj1gxAASLAplcfbDwOI8FjqlNoSSZEH9FyhOojUSenzqgb48g1xXKz3\neIMUesYaa8JnYJ5RDObFIbplYUGkvPbN37ffHwidYPjeMOrGyQFMaCXWOj8p4sKB\nS8D8qrSCLfk0T2of3C4hGkBnfmg1neIzrlIM2XV7oDUFd9qRxU4/Oq30fodWKs2t\nE7IyyAA2xubhrWDbrakgmLysB2iJ15o5Fky5zLnNEea8p8FKFAWvDDXqDNXZc6SI\nMFIbwRwjV/F0BuoWPCOgDePI97/RK1nTOts1YKjBWQKBgQD4ag6VAOeXYcK595BU\nKB20bmGpIIA2LiRpXNoJ1jWicL9x1o7v/1DRRzW8L8WG806Bui9Qq9NWScgC8mLe\ntkRsen2uqlFX/qRcjEPWwluV/t3hnKPaWr3aEOsN5EdhAUFYJdcATU4X9MH3QtqS\nrdLuo0DIGx+07dUT3KnE62Fg/wKBgQDVDoMioSFsTpo5kjDES5dpmE36m1mAQw/p\nMuyM6kT3oeFIcQEOnq2b6JQ2m6uXvlm4r6Hl5H785J/F60cWaysZHT4F2hEf5Zl/\nXIJSe4+Br6Ul72lSYTs5cbhB+CgmaokTzsMwgA0r6dGeuJMT1qGEYgLqwC0E9rva\nl4UelAvSXQKBgDyEqfTG+aS5nlTr6O93rnTsh0JKtrF8YEaC5mOLGhnu2dUD7mKt\nkqTJcl/cS4Tq9W9JSomesqfM5btCDbAwO08qMEBDIfoMAULCsSw6wVEzfB6gqJJj\nlOjxQjJqMLGDOsYcwdpC+wl/CVoRoWomisK0Zu3ZHcpYPpbOJVXh+iFFAoGAfSAV\nwcuxzmLnTnJd85qVZO2OtmRwDtTTzlga9rNLJ8fJf/rl7Qkh2pOgH+YSw36GQOHd\nCh/EuI8oilsgF7l+yTQUTemA7yOvn03cN8bbRAW8zuepCjmSR61S0mOEaPNeZ+Sh\nW6WIlsauVjH+JsOBfjb1kZqllem1763W/1thCf0CgYBqi2bynW8P2mSS8V9YCQgh\nBSQwEPhUi6mEWtvivdDngf3o6IaMW7RCqrNJ2uuM5bV9rSXN/Ud8JTwVUJc35yTx\n7Ibq1YutE0jT1NrRuJVfNxWysG4VxCDnKbtcu035wonjs/8+SRDEVUyiiazpQLO/\njPcKSwo82pHRvfh5C+L+uw==\n-----END PRIVATE KEY-----\n",
  "client_email": "snttestacc@snttest.iam.gserviceaccount.com",
  "client_id": "102694116734991217814",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/snttestacc%40snttest.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}
''';
const _spreadsheetId = '182H6VT_Phx-4by5_fWefCMLdUPTaR6cXwPt5FD-OjZs';

String? toNameResult;
String? toNumberResult;
String? toDateResult;

void toName(String value) {
  toNameResult = value;
}

void toNumber(String value) {
  toNumberResult = value;
}

void toDate(String value) {
  toDateResult = value;
}

void toGoogleTab() async {
  final gSheets = GSheets(_credentials);
  final ss = await gSheets.spreadsheet(_spreadsheetId);

  final sheet = ss.worksheetByTitle('snt');

  //await sheet!.values.insertValue(newValue, column: 1, row: 1);
  //print(toNameResult);
  await sheet!.values
      .insertRowByKey(toDateResult!, [toNameResult, toNumberResult]);
}
