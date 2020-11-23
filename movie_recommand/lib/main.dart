import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  // controll your tab here
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Text("hello "),
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: Column(
          children: [
            Container(
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.green,
                unselectedLabelColor: Colors.black,
                indicatorWeight: 1,
                tabs: [
                  Tab(
                    text: "Movie Name",
                  ),
                  Tab(
                    text: "Movie Auth",
                  ),
                ],
              ),
            ),
            TabBarView(
              controller: _tabController,
              children: <Widget>[
                Container(
                  color: Colors.black,
                  height: 20,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [Text("Movie Name")],
                  ),
                ),
                Text("Auth"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
