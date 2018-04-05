import 'package:flutter/material.dart';

class ItemReviewsPage extends StatefulWidget
{
  @override
  _ItemReviewsPageState createState() => new _ItemReviewsPageState();
}

class _ItemReviewsPageState extends State<ItemReviewsPage>
{
  @override
  Widget build(BuildContext context)
  {
    return new Scaffold
    (
      appBar: new AppBar
      (
        elevation: 2.0,
        backgroundColor: Colors.white,
        leading: new IconButton
        (
          onPressed: () => Navigator.of(context).pop(),
          icon: new Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: new Text('Nike Jordan Air III', style: new TextStyle(color: Colors.black)),
      ),
      body: new Center
      (
        child: new Column
        (
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>
          [
            new Container
            (
              margin: new EdgeInsets.only(top: 16.0),
              child: new Text
              (
                '4.6',
                style: new TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 64.0)
              ),
            ),
            new Padding
            (
              padding: new EdgeInsets.symmetric(horizontal: 60.0),
              child: new Row
              (
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>
                [
                  new Icon(Icons.star, color: Colors.amber, size: 48.0),
                  new Icon(Icons.star, color: Colors.amber, size: 48.0),
                  new Icon(Icons.star, color: Colors.amber, size: 48.0),
                  new Icon(Icons.star, color: Colors.amber, size: 48.0),
                  new Icon(Icons.star, color: Colors.black12, size: 48.0),
                ],
              ),
            ),
            new Padding
            (
              padding: new EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
              child: new Column
              (
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>
                [
                  /// 5 stars and progress bar
                  new Padding
                  (
                    padding: new EdgeInsets.symmetric(vertical: 4.0),
                    child: new Row
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>
                      [
                        new Row
                        (
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>
                          [
                            new Icon(Icons.star, color: Colors.black54, size: 16.0),
                            new Icon(Icons.star, color: Colors.black54, size: 16.0),
                            new Icon(Icons.star, color: Colors.black54, size: 16.0),
                            new Icon(Icons.star, color: Colors.black54, size: 16.0),
                            new Icon(Icons.star, color: Colors.black54, size: 16.0),
                          ],
                        ),
                        new Padding(padding: new EdgeInsets.only(right: 24.0)),
                        new Expanded
                        (
                          child: new Theme
                          (
                            data: new ThemeData(accentColor: Colors.green),
                            child: new LinearProgressIndicator
                            (
                              value: 0.9,
                              backgroundColor: Colors.black12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  new Padding
                  (
                    padding: new EdgeInsets.symmetric(vertical: 4.0),
                    child: new Row
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>
                      [
                        new Row
                        (
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>
                          [
                            new Icon(Icons.star, color: Colors.black54, size: 16.0),
                            new Icon(Icons.star, color: Colors.black54, size: 16.0),
                            new Icon(Icons.star, color: Colors.black54, size: 16.0),
                            new Icon(Icons.star, color: Colors.black54, size: 16.0),
                            new Icon(Icons.star, color: Colors.black12, size: 16.0),
                          ],
                        ),
                        new Padding(padding: new EdgeInsets.only(right: 24.0)),
                        new Expanded
                        (
                          child: new Theme
                          (
                            data: new ThemeData(accentColor: Colors.lightGreen),
                            child: new LinearProgressIndicator
                            (
                              value: 0.7,
                              backgroundColor: Colors.black12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  new Padding
                  (
                    padding: new EdgeInsets.symmetric(vertical: 4.0),
                    child: new Row
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>
                      [
                        new Row
                        (
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>
                          [
                            new Icon(Icons.star, color: Colors.black54, size: 16.0),
                            new Icon(Icons.star, color: Colors.black54, size: 16.0),
                            new Icon(Icons.star, color: Colors.black54, size: 16.0),
                            new Icon(Icons.star, color: Colors.black12, size: 16.0),
                            new Icon(Icons.star, color: Colors.black12, size: 16.0),
                          ],
                        ),
                        new Padding(padding: new EdgeInsets.only(right: 24.0)),
                        new Expanded
                        (
                          child: new Theme
                          (
                            data: new ThemeData(accentColor: Colors.yellow),
                            child: new LinearProgressIndicator
                            (
                              value: 0.6,
                              backgroundColor: Colors.black12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  new Padding
                  (
                    padding: new EdgeInsets.symmetric(vertical: 4.0),
                    child: new Row
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>
                      [
                        new Row
                        (
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>
                          [
                            new Icon(Icons.star, color: Colors.black54, size: 16.0),
                            new Icon(Icons.star, color: Colors.black54, size: 16.0),
                            new Icon(Icons.star, color: Colors.black12, size: 16.0),
                            new Icon(Icons.star, color: Colors.black12, size: 16.0),
                            new Icon(Icons.star, color: Colors.black12, size: 16.0),
                          ],
                        ),
                        new Padding(padding: new EdgeInsets.only(right: 24.0)),
                        new Expanded
                        (
                          child: new Theme
                          (
                            data: new ThemeData(accentColor: Colors.orange),
                            child: new LinearProgressIndicator
                            (
                              value: 0.25,
                              backgroundColor: Colors.black12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  new Padding
                  (
                    padding: new EdgeInsets.symmetric(vertical: 4.0),
                    child: new Row
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>
                      [
                        new Row
                        (
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>
                          [
                            new Icon(Icons.star, color: Colors.black54, size: 16.0),
                            new Icon(Icons.star, color: Colors.black12, size: 16.0),
                            new Icon(Icons.star, color: Colors.black12, size: 16.0),
                            new Icon(Icons.star, color: Colors.black12, size: 16.0),
                            new Icon(Icons.star, color: Colors.black12, size: 16.0),
                          ],
                        ),
                        new Padding(padding: new EdgeInsets.only(right: 24.0)),
                        new Expanded
                        (
                          child: new Theme
                          (
                            data: new ThemeData(accentColor: Colors.red),
                            child: new LinearProgressIndicator
                            (
                              value: 0.1,
                              backgroundColor: Colors.black12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}