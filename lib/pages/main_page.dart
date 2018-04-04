import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

import 'shop_items_page.dart';

class MainPage extends StatefulWidget
{
  @override
  _MainPageState createState() => new _MainPageState();
}

class _MainPageState extends State<MainPage>
{
  final List<List<double>> charts =
  [
    [0.0, 0.3, 0.7, 0.6, 0.55, 0.8, 1.2, 1.3, 1.35, 0.9, 1.5, 1.7, 1.8, 1.7, 1.2, 0.8, 1.9, 2.0, 2.2, 1.9, 2.2, 2.1, 2.0, 2.3, 2.4, 2.45, 2.6, 3.6, 2.6, 2.7, 2.9, 2.8, 3.4],
    [0.0, 0.3, 0.7, 0.6, 0.55, 0.8, 1.2, 1.3, 1.35, 0.9, 1.5, 1.7, 1.8, 1.7, 1.2, 0.8, 1.9, 2.0, 2.2, 1.9, 2.2, 2.1, 2.0, 2.3, 2.4, 2.45, 2.6, 3.6, 2.6, 2.7, 2.9, 2.8, 3.4, 0.0, 0.3, 0.7, 0.6, 0.55, 0.8, 1.2, 1.3, 1.35, 0.9, 1.5, 1.7, 1.8, 1.7, 1.2, 0.8, 1.9, 2.0, 2.2, 1.9, 2.2, 2.1, 2.0, 2.3, 2.4, 2.45, 2.6, 3.6, 2.6, 2.7, 2.9, 2.8, 3.4,],
    [0.0, 0.3, 0.7, 0.6, 0.55, 0.8, 1.2, 1.3, 1.35, 0.9, 1.5, 1.7, 1.8, 1.7, 1.2, 0.8, 1.9, 2.0, 2.2, 1.9, 2.2, 2.1, 2.0, 2.3, 2.4, 2.45, 2.6, 3.6, 2.6, 2.7, 2.9, 2.8, 3.4, 0.0, 0.3, 0.7, 0.6, 0.55, 0.8, 1.2, 1.3, 1.35, 0.9, 1.5, 1.7, 1.8, 1.7, 1.2, 0.8, 1.9, 2.0, 2.2, 1.9, 2.2, 2.1, 2.0, 2.3, 2.4, 2.45, 2.6, 3.6, 2.6, 2.7, 2.9, 2.8, 3.4, 0.0, 0.3, 0.7, 0.6, 0.55, 0.8, 1.2, 1.3, 1.35, 0.9, 1.5, 1.7, 1.8, 1.7, 1.2, 0.8, 1.9, 2.0, 2.2, 1.9, 2.2, 2.1, 2.0, 2.3, 2.4, 2.45, 2.6, 3.6, 2.6, 2.7, 2.9, 2.8, 3.4]
  ];

  static final List<String> chartDropdownItems = [ 'Last 7 days', 'Last month', 'Last year' ];
  String actualDropdown = chartDropdownItems[0];
  int actualChart = 0;

  @override
  Widget build(BuildContext context)
  {
    return new Scaffold
    (
      appBar: new AppBar
      (
        elevation: 2.0,
        backgroundColor: Colors.white,
        title: new Text('Dashboard', style: new TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 30.0)),
        actions: <Widget>
        [
          new Container
          (
            margin: new EdgeInsets.only(right: 8.0),
            child: new Row
            (
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>
              [
                new Text('beclothed.com', style: new TextStyle(color: Colors.blue, fontWeight: FontWeight.w700, fontSize: 14.0)),
                new Icon(Icons.arrow_drop_down, color: Colors.black54)
              ],
            ),
          )
        ],
      ),
      body: new ListView
      (
        scrollDirection: Axis.vertical,
        padding: new EdgeInsets.symmetric(horizontal: 16.0),
        children: <Widget>
        [
          new Padding(padding: new EdgeInsets.only(top: 16.0)),
          new Container
          (
            margin: new EdgeInsets.only(bottom: 16.0),
            child: new Material
            (
              elevation: 14.0,
              borderRadius: new BorderRadius.circular(12.0),
              shadowColor: new Color(0x802196F3),
              child: new InkWell
              (
                onTap: () {},
                child: new Padding
                (
                  padding: const EdgeInsets.all(24.0),
                  child: new Row
                  (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>
                    [
                      new Column
                      (
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>
                        [
                          new Text('Total Views', style: new TextStyle(color: Colors.blueAccent)),
                          new Text('265K', style: new TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0))
                        ],
                      ),
                      new Material
                      (
                        color: Colors.blue,
                        borderRadius: new BorderRadius.circular(24.0),
                        child: new Center
                        (
                          child: new Padding
                          (
                            padding: const EdgeInsets.all(16.0),
                            child: new Icon(Icons.timeline, color: Colors.white, size: 30.0),
                          )
                        )
                      )
                    ]
                  ),
                ),
              )
            )
          ),
          new Container
          (
            margin: new EdgeInsets.only(bottom: 16.0),
            child: new Row
            (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>
              [
                new Material
                (
                  elevation: 14.0,
                  borderRadius: new BorderRadius.circular(12.0),
                  shadowColor: new Color(0x802196F3),
                  child: new InkWell
                  (
                    onTap: () {},
                    child: new Padding
                    (
                      padding: const EdgeInsets.all(24.0),
                      child: new Column
                      (
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>
                        [
                          new Material
                          (
                            color: Colors.teal,
                            shape: new CircleBorder(),
                            child: new Padding
                            (
                              padding: const EdgeInsets.all(16.0),
                              child: new Icon(Icons.settings_applications, color: Colors.white, size: 30.0),
                            )
                          ),
                          new Padding(padding: new EdgeInsets.only(bottom: 16.0)),
                          new Text('General', style: new TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 24.0)),
                          new Text('Images, Videos', style: new TextStyle(color: Colors.black45)),
                        ]
                      ),
                    ),
                  )
                ),
                new Material
                (
                  elevation: 14.0,
                  borderRadius: new BorderRadius.circular(12.0),
                  shadowColor: new Color(0x802196F3),
                  child: new InkWell
                  (
                    onTap: () {},
                    child: new Padding
                    (
                      padding: const EdgeInsets.all(24.0),
                      child: new Column
                      (
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>
                        [
                          new Material
                          (
                            color: Colors.amber,
                            shape: new CircleBorder(),
                            child: new Padding
                            (
                              padding: const EdgeInsets.all(16.0),
                              child: new Icon(Icons.notifications, color: Colors.white, size: 30.0),
                            )
                          ),
                          new Padding(padding: new EdgeInsets.only(bottom: 16.0)),
                          new Text('Notification', style: new TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 24.0)),
                          new Text('All ', style: new TextStyle(color: Colors.black45)),
                        ]
                      ),
                    ),
                  )
                ),
              ],
            )
          ),
          new Container
          (
            margin: new EdgeInsets.only(bottom: 16.0),
            child: new Material
            (
              elevation: 14.0,
              borderRadius: new BorderRadius.circular(12.0),
              shadowColor: new Color(0x802196F3),
              child: new InkWell
              (
                onTap: () {},
                child: new Padding
                (
                  padding: const EdgeInsets.all(24.0),
                  child: new Column
                  (
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>
                    [
                      new Row
                      (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>
                        [
                          new Column
                          (
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>
                            [
                              new Text('Revenue', style: new TextStyle(color: Colors.green)),
                              new Text('\$16K', style: new TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0)),
                            ],
                          ),
                          new DropdownButton
                          (
                            isDense: true,
                            value: actualDropdown,
                            onChanged: (String value) => setState(()
                            {
                              actualDropdown = value;
                              actualChart = chartDropdownItems.indexOf(value); // Refresh the chart
                            }),
                            items: chartDropdownItems.map((String title)
                            {
                              return new DropdownMenuItem
                              (
                                value: title,
                                child: new Text(title, style: new TextStyle(color: Colors.blue, fontWeight: FontWeight.w400, fontSize: 14.0)),
                              );
                            }).toList()
                          )
                        ],
                      ),
                      new Padding(padding: new EdgeInsets.only(bottom: 4.0)),
                      new Sparkline
                      (
                        data: charts[actualChart],
                        lineWidth: 5.0,
                        lineColor: Colors.greenAccent,
                      )
                    ],
                  )
                ),
              )
            )
          ),
          new Container
          (
            margin: new EdgeInsets.only(bottom: 16.0),
            child: new Material
            (
              elevation: 14.0,
              borderRadius: new BorderRadius.circular(12.0),
              shadowColor: new Color(0x802196F3),
              child: new InkWell
              (
                onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (_) => new ShopItemsPage())),
                child: new Padding
                (
                  padding: const EdgeInsets.all(24.0),
                  child: new Row
                  (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>
                    [
                      new Column
                      (
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>
                        [
                          new Text('Shop Items', style: new TextStyle(color: Colors.redAccent)),
                          new Text('173', style: new TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0))
                        ],
                      ),
                      new Material
                      (
                        color: Colors.red,
                        borderRadius: new BorderRadius.circular(24.0),
                        child: new Center
                        (
                          child: new Padding
                          (
                            padding: new EdgeInsets.all(16.0),
                            child: new Icon(Icons.store, color: Colors.white, size: 30.0),
                          )
                        )
                      )
                    ]
                  ),
                ),
              )
            )
          ),
        ],
      )
    );
  }
}