import 'package:flutter/material.dart';
import 'package:im_core/im_core.dart';
import 'package:logger/logger.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  MediaDto mediaDto = MediaDto(id: 'ddd', name: 'test');

  @override
  void initState() {
    HttpHelper.init(baseUrl: 'http://10.0.5.20:8044');
    super.initState();
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;

      // SessionUnitGet(id: '9a731afb-51a2-9c8d-54da-3a08502e076a')
      //     .sendAsync()
      //     .then((ret) {
      //   //
      // });

      // SessionUnitSetTopping(
      //   id: '9a731afb-51a2-9c8d-54da-3a08502e076a',
      //   isTopping: true,
      // ).sendAsync().then((ret) {
      //   //
      // });

      // SessionUnitSetReaded(
      //   id: '9a731afb-51a2-9c8d-54da-3a08502e076a',
      //   messageId: '762a99c5-fe2a-ef7e-103c-3a08502e077b',
      // ).fetch().then((ret) {
      //   //
      // });

      // SessionUnitGetBadge(ownerId: 'b700aef5-d48b-4aac-9bbe-52fdcdfd53cb')
      //     .fetch()
      //     .then((value) {
      //   Logger().d(value);
      // });

      // SessionUnitGetMessageList(id: '9a731afb-51a2-9c8d-54da-3a08502e076a')
      //     .fetch()
      //     .then((ret) {
      //   //
      // });

      SessionUnitGetSessionMemberList(
              id: '9a731afb-51a2-9c8d-54da-3a08502e076a')
          .submit()
          .then((ret) {
        //
      });

      // var service = SessionUnitService();
      // service
      //     .getListAsync(ownerId: 'b700aef5-d48b-4aac-9bbe-52fdcdfd53cb')
      //     .then((data) {
      //   // data
      // });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${mediaDto.name} You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            InkWell(
              onTap: () {
                SessionUnitGetList(
                  ownerId: 'b700aef5-d48b-4aac-9bbe-52fdcdfd53cb',
                ).submit().then((ret) {
                  //
                });
              },
              child: const ListTile(title: Text('SessionUnitGetList')),
            ),
            InkWell(
              onTap: () {
                SendTextMessage(
                  sessionUnitId: '',
                  senderId: '4fcdafb6-429a-4038-4755-3a085f58c154',
                  receiverId: '0d1c42e5-bcc1-bdc8-355e-3a085097a2db',
                  ignoreConnections: [],
                  content: TextContentDto(
                    text: 'text',
                  ),
                ).submit().then((_) {
                  //
                });
              },
              child: const ListTile(title: Text('SendTextMessage')),
            ),
            InkWell(
              onTap: () {
                SendSoundMessage(
                  sessionUnitId: '',
                  senderId: '4fcdafb6-429a-4038-4755-3a085f58c154',
                  receiverId: '0d1c42e5-bcc1-bdc8-355e-3a085097a2db',
                  ignoreConnections: [],
                  content: SoundContentDto(
                    text: 'text',
                    time: 123,
                    url: 'app://test?id=123',
                  ),
                ).submit().then((_) {
                  //
                });
              },
              child: const ListTile(title: Text('SendSoundMessage')),
            ),
            InkWell(
              onTap: () {
                ChatObjectGetList(
                  objectType: ChatObjectTypesEnum.personal,
                ).submit().then((_) {
                  Logger().w('totalCount:${_.totalCount}');
                });
              },
              child: const ListTile(title: Text('ChatObjectGetList')),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
