import 'package:flutter/material.dart';
import 'package:sih_ecopreneurs/auth/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gsheets/gsheets.dart';

const credentials = r'''{
  "type": "service_account",
  "project_id": "attapp1profside",
  "private_key_id": "0a3560cb7cf06bbe7ef3e555049c2b5634e71702",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDPFTvPXwJX62Fx\nA0pYSFwew9+T+sMVCN0VOP9HoG9zyLMe6ZalWznG1fv6rKnzQt0kWSjLAPNCMAxO\n+ZQ4MCu+F5to3/fnptSHPWxE+loa3LZh1nS5ritPI/NVEeUD4/oIDrVPkFq5NRDQ\nSL9safTvVaz1V1JbcFHLSi8Yb6Jnl9jPVsrq2/vfiXW3AD/vsPtHM4vEMA4Rj8cr\nkkEWrPJS+QgR8572u1FatwtTUzkIPTzLAZ135u0jfENyH3jX8iIkW62cTcxreb7i\nYCkWY6D5y57G2477WocXwA3Ww09TtNSjd5PON4cqL8roHpfQJpwrQcLPIhTlPVq0\no3aZofyvAgMBAAECggEAOhYbq8RbtOuqbnfcz7ykUmDhAvIw7GKLGRvex2miOZkP\nXVlqT0GyiCqXvq3WEg0sWLjFr4O5uFQf77skL0qbynt2tUk1kX4DWVgKWaLbyXMl\nmXX9UeQf89gCtlcJpTi6dq4hf4rfV9ohuDrfrvpdoRCoLj1rNYjg+KP7Z+BQbrvw\n//ZMn8GHupqf34UMRIqUzYqCFUMC9w6VJWqqKOA3oPOWOFm6kf5vZK6oywr2gpkC\nklXbyrNz4kFatqsPr5uY18q9XW5TpOXt+TVkimOOej+/wERoLHW4UtcGC6vB92pb\nYv0VTpyzsgfdSsd0i/pW8+45lkbScHEcXOEIahvvkQKBgQDpKlfTyw25BwRD7v+J\nkDmsQK/yI4No7N0+5f0czkDxhlb02lK5hxRjOY8WaTcAW+YREjmuInvzkgI8NXLK\nObHVbeAIO4/wwKdbS1FuYeIq43aCzbtA39NWnPeoAPNAQTB2c917VpVo5RRLlGm9\nQihAqoNHM7IVx0CxYYhGSrMgKQKBgQDjXPsdFeNoZu+Gq+3jNMV0w1E1HRZPze5s\nwRSHJjqA36OToQU/WH5C2mXWOdbniHXKoCPbqZi6Lnzs3/ygNZ8yziKPTY5XgduU\n+Cv2mn2iLet3oh1qku4pGuJX5k3CWiIt2CQDf8ehX0fDamxSs42n8D8RRp985Gxr\naQGTKphxFwKBgDY7JgBZyxBNBH30ebT6OZ/Jz+KGxgrChNcbURrBEjPa5iC/ItyK\nAYDuo0w4HpXTyhgQYCATXzcQr7pnSBKnBqi4jJH9oIYDmSlPxFnjJGKLU0YrKbF2\nHcaYbbXCutEoGGiEnHASfF/QYD8P/uQJHimkPzJxYKtWE8LuB28p8q25AoGBAIn3\nzWYb9zBOboFhaWzbhArTzz6U1Qo+Y7VZATT17MBxdVjLeFy1PYEh+HQkCxXbB+ea\nf8f3RXeNaD9xuGIbx+xTjEM7g+n0IiRm6H6vxxcYGHAzTvhyCtWku78tQPh0K5N4\nOnppGuIA6JJbzTnuPUKwlgTMv1FRZ71SLiN40KKnAoGARL/O/oJGs5d0nUQPkOZI\nwI0iwE7uwqXAx9ZR4Le8dW9cyj9vzr3wV6Z1qDlOP7/LVSWY4TG2pDAb708bIXI5\noppjmRwhAzHs7NV8eVEwOXE/4SBA4Q0xPXKGPfomt5wGDz1jUqU6t/3WOk05l+vW\n29hvn3xrtnor7QNIX+E2h9M=\n-----END PRIVATE KEY-----\n",
  "client_email": "sih2023@attapp1profside.iam.gserviceaccount.com",
  "client_id": "101861562182970989039",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/sih2023%40attapp1profside.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}''';

const spreadsheetid = '198KPi1mTWlTjy7Wd7_bcN4Krpb9DLmqff93LoxEp3mM';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final gsheets = GSheets(credentials);
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home:MyApp()));
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
            () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(color: Color(0xfffeebdc),
          child: Center(child: Image.asset('assets/images/Notebook.png')),
      ),));
  }
}
