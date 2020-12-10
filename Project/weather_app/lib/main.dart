import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
 AppSettings setting =AppSettings();

 SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]).then((_) => runApp(MyApp(setting:setting)));
}

class MyApp extends StatelessWidget{
  final AppSetting setting;
  const MyApp({Key key,this.setting}): super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: PageContainer(setting: setting),
    );
    throw UnimplementedError();
  }
}