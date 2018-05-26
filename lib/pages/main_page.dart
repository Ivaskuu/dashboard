import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

import 'shop_items_page.dart';

class MainPage extends StatefulWidget
{
  @override
  _MainPageState createState() => _MainPageState();
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
    return Scaffold
    (
      appBar: AppBar
      (
        elevation: 2.0,
        backgroundColor: Colors.white,
        title: Text('Dashboard', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 30.0)),
        actions: <Widget>
        [
          Container
          (
            margin: EdgeInsets.only(right: 8.0),
            child: Row
            (
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>
              [
                Text('beclothed.com', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w700, fontSize: 14.0)),
                Icon(Icons.arrow_drop_down, color: Colors.black54)
              ],
            ),
          )
        ],
      ),
      body: ListView
      (
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        children: <Widget>
        [
          Padding(padding: EdgeInsets.only(top: 16.0)),
          Container
          (
            margin: EdgeInsets.only(bottom: 16.0),
            child: Material
            (
              elevation: 14.0,
              borderRadius: BorderRadius.circular(12.0),
              shadowColor: Color(0x802196F3),
              child: InkWell
              (
                onTap: () {},
                child: Padding
                (
                  padding: const EdgeInsets.all(24.0),
                  child: Row
                  (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>
                    [
                      Column
                      (
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>
                        [
                          Text('Total Views', style: TextStyle(color: Colors.blueAccent)),
                          Text('265K', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0))
                        ],
                      ),
                      Material
                      (
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(24.0),
                        child: Center
                        (
                          child: Padding
                          (
                            padding: const EdgeInsets.all(16.0),
                            child: Icon(Icons.timeline, color: Colors.white, size: 30.0),
                          )
                        )
                      )
                    ]
                  ),
                ),
              )
            )
          ),
          Container
          (
            margin: EdgeInsets.only(bottom: 16.0),
            child: Row
            (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>
              [
                Material
                (
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(12.0),
                  shadowColor: Color(0x802196F3),
                  child: InkWell
                  (
                    onTap: () {},
                    child: Padding
                    (
                      padding: const EdgeInsets.all(24.0),
                      child: Column
                      (
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>
                        [
                          Material
                          (
                            color: Colors.teal,
                            shape: CircleBorder(),
                            child: Padding
                            (
                              padding: const EdgeInsets.all(16.0),
                              child: Icon(Icons.settings_applications, color: Colors.white, size: 30.0),
                            )
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 16.0)),
                          Text('General', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 24.0)),
                          Text('Images, Videos', style: TextStyle(color: Colors.black45)),
                        ]
                      ),
                    ),
                  )
                ),
                Material
                (
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(12.0),
                  shadowColor: Color(0x802196F3),
                  child: InkWell
                  (
                    onTap: () {},
                    child: Padding
                    (
                      padding: const EdgeInsets.all(24.0),
                      child: Column
                      (
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>
                        [
                          Material
                          (
                            color: Colors.amber,
                            shape: CircleBorder(),
                            child: Padding
                            (
                              padding: const EdgeInsets.all(16.0),
                              child: Icon(Icons.notifications, color: Colors.white, size: 30.0),
                            )
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 16.0)),
                          Text('Notification', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 24.0)),
                          Text('All ', style: TextStyle(color: Colors.black45)),
                        ]
                      ),
                    ),
                  )
                ),
              ],
            )
          ),
          Container
          (
            margin: EdgeInsets.only(bottom: 16.0),
            child: Material
            (
              elevation: 14.0,
              borderRadius: BorderRadius.circular(12.0),
              shadowColor: Color(0x802196F3),
              child: InkWell
              (
                onTap: () {},
                child: Padding
                (
                  padding: const EdgeInsets.all(24.0),
                  child: Column
                  (
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>
                    [
                      Row
                      (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>
                        [
                          Column
                          (
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>
                            [
                              Text('Revenue', style: TextStyle(color: Colors.green)),
                              Text('\$16K', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0)),
                            ],
                          ),
                          DropdownButton
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
                              return DropdownMenuItem
                              (
                                value: title,
                                child: Text(title, style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w400, fontSize: 14.0)),
                              );
                            }).toList()
                          )
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 4.0)),
                      Sparkline
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
          Container
          (
            margin: EdgeInsets.only(bottom: 16.0),
            child: Material
            (
              elevation: 14.0,
              borderRadius: BorderRadius.circular(12.0),
              shadowColor: Color(0x802196F3),
              child: InkWell
              (
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => ShopItemsPage())),
                child: Padding
                (
                  padding: const EdgeInsets.all(24.0),
                  child: Row
                  (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>
                    [
                      Column
                      (
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>
                        [
                          Text('Shop Items', style: TextStyle(color: Colors.redAccent)),
                          Text('173', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0))
                        ],
                      ),
                      Material
                      (
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(24.0),
                        child: Center
                        (
                          child: Padding
                          (
                            padding: EdgeInsets.all(16.0),
                            child: Icon(Icons.store, color: Colors.white, size: 30.0),
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