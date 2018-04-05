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
      body: new CustomScrollView
      (
        slivers: <Widget>
        [
          new SliverAppBar
          (
            expandedHeight: 170.0,
            backgroundColor: Colors.red,
            flexibleSpace: new FlexibleSpaceBar
            (
              title: new Text('Nike Jordan Air III'),
              background: new SizedBox.expand
              (
                child: new Stack
                (
                  alignment: Alignment.center,
                  children: <Widget>
                  [
                    new Image.asset('res/shoes1.png'),
                    new Container(color: Colors.black26)
                  ],
                ),
              ),
            ),
            elevation: 2.0,
            forceElevated: true,
            pinned: true,
          ),
          new SliverList
          (
            delegate: new SliverChildListDelegate
            (
              <Widget>
              [
                /// Rating average
                new Center
                (
                  child: new Container
                  (
                    margin: new EdgeInsets.only(top: 16.0),
                    child: new Text
                    (
                      '4.6',
                      style: new TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 64.0)
                    ),
                  ),
                ),
                /// Rating stars
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
                /// Rating chart lines
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
                                  value: 0.07,
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
                                  value: 0.12,
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
                new Divider(),
                /// Review
                new Padding
                (
                  padding: new EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                  child: new Material
                  (
                    elevation: 12.0,
                    color: Colors.white,
                    borderRadius: new BorderRadius.only
                    (
                      topRight: new Radius.circular(20.0),
                      bottomLeft: new Radius.circular(20.0),
                      bottomRight: new Radius.circular(20.0),
                    ),
                    child: new Container
                    (
                      margin: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                      child: new Container
                      (
                        child: new ListTile
                        (
                          leading: new CircleAvatar
                          (
                            backgroundColor: Colors.purple,
                            child: new Text('AI'),
                          ),
                          title: new Text('Ivascu Adrian ★★★★★', style: new TextStyle()),
                          subtitle: new Text('The shoes were shipped one day before the shipping date, but this wasn\'t at all a problem :). The shoes are very comfortable and good looking.', style: new TextStyle()),
                        ),
                      ),
                    ),
                  ),
                ),
                /// Review reply
                new Padding
                (
                  padding: new EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                  child: new Row
                  (
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new Material
                      (
                        elevation: 12.0,
                        color: Colors.tealAccent,
                        borderRadius: new BorderRadius.only
                        (
                          topLeft: new Radius.circular(20.0),
                          bottomLeft: new Radius.circular(20.0),
                          bottomRight: new Radius.circular(20.0),
                        ),
                        child: new Container
                        (
                          margin: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                          child: new Text('Happy to hear that!', style: Theme.of(context).textTheme.subhead),
                        ),
                      ),
                    ],
                  ),
                ),
                new Divider(),
                /// Review
                new Padding
                (
                  padding: new EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                  child: new Material
                  (
                    elevation: 12.0,
                    color: Colors.white,
                    borderRadius: new BorderRadius.only
                    (
                      topRight: new Radius.circular(20.0),
                      bottomLeft: new Radius.circular(20.0),
                      bottomRight: new Radius.circular(20.0),
                    ),
                    child: new Container
                    (
                      margin: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                      child: new Column
                      (
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>
                        [
                          new Container
                          (
                            child: new ListTile
                            (
                              leading: new CircleAvatar
                              (
                                backgroundColor: Colors.purple,
                                child: new Text('AI'),
                              ),
                              title: new Text('Ivascu Adrian ★★★★★', style: new TextStyle()),
                              subtitle: new Text('The shoes were shipped one day before the shipping date, but this wasn\'t at all a problem :). The shoes are very comfortable and good looking', style: new TextStyle()),
                            ),
                          ),
                          new Padding
                          (
                            padding: new EdgeInsets.only(top: 4.0, right: 10.0),
                            child: new FlatButton.icon
                            (
                              onPressed: () {},
                              icon: new Icon(Icons.reply, color: Colors.blueAccent),
                              label: new Text('Reply', style: new TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w700, fontSize: 16.0))
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                new Divider(),
                /// Review
                new Padding
                (
                  padding: new EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                  child: new Material
                  (
                    elevation: 12.0,
                    color: Colors.white,
                    borderRadius: new BorderRadius.only
                    (
                      topRight: new Radius.circular(20.0),
                      bottomLeft: new Radius.circular(20.0),
                      bottomRight: new Radius.circular(20.0),
                    ),
                    child: new Container
                    (
                      margin: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                      child: new Column
                      (
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>
                        [
                          new Container
                          (
                            child: new ListTile
                            (
                              leading: new CircleAvatar
                              (
                                backgroundColor: Colors.purple,
                                child: new Text('AI'),
                              ),
                              title: new Text('Ivascu Adrian ★★★★★', style: new TextStyle()),
                              subtitle: new Text('The shoes were shipped one day before the shipping date, but this wasn\'t at all a problem :). The shoes are very comfortable and good looking', style: new TextStyle()),
                            ),
                          ),
                          new Padding
                          (
                            padding: new EdgeInsets.only(top: 4.0, right: 10.0),
                            child: new FlatButton.icon
                            (
                              onPressed: () {},
                              icon: new Icon(Icons.reply, color: Colors.blueAccent),
                              label: new Text('Reply', style: new TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w700, fontSize: 16.0))
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ]
            ),
          ),
        ],
      ),
    );
  }
}