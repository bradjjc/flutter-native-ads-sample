import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final NativeAd myNative = NativeAd(
    adUnitId: NativeAd.testAdUnitId,
    factoryId: 'listTile',
    listener: NativeAdListener(),
    request: AdRequest(),
  );

  @override
  void initState() {
    super.initState();
    myNative.load();
  }

  @override
  void dispose() {
    myNative.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('native-ads-sample'),
      ),
      body: ListView(
        children: [
          ListTile(title: Text('title')),
          ListTile(title: Text('title')),
          Container(
            width: double.infinity,
            height: 50,
            alignment: Alignment.center,
            child: AdWidget(ad: myNative),
          ),
          ListTile(title: Text('title')),
          ListTile(title: Text('title')),
          ListTile(title: Text('title')),
          ListTile(title: Text('title')),
          ListTile(title: Text('title')),
          ListTile(title: Text('title')),
          ListTile(title: Text('title')),
          ListTile(title: Text('title')),
          ListTile(title: Text('title')),
          ListTile(title: Text('title')),
          ListTile(title: Text('title')),
          ListTile(title: Text('title')),
          ListTile(title: Text('title')),
          ListTile(title: Text('title')),
          ListTile(title: Text('title')),
          ListTile(title: Text('title')),
          ListTile(title: Text('title')),
          ListTile(title: Text('title')),
          ListTile(title: Text('title')),
        ],
      ),
    );
  }
}
