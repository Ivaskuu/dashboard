import 'package:flutter/material.dart';
import 'item_reviews_page.dart';

class ShopItemsPage extends StatefulWidget
{
  @override
  _ShopItemsPageState createState() => new _ShopItemsPageState();
}

class _ShopItemsPageState extends State<ShopItemsPage>
{
  @override
  Widget build(BuildContext context)
  {
    return new Scaffold
    (
      appBar: new AppBar
      (
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: new IconButton
        (
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
          icon: new Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: new Text('Shop Items (3)', style: new TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
        // actions: <Widget>
        // [
        //   new Container
        //   (
        //     margin: new EdgeInsets.only(right: 8.0),
        //     child: new Row
        //     (
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: <Widget>
        //       [
        //         new Text('beclothed.com', style: new TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 14.0)),
        //         new Icon(Icons.arrow_drop_down, color: Colors.black54)
        //       ],
        //     ),
        //   )
        // ],
      ),
      body: new ListView
      (
        scrollDirection: Axis.vertical,
        padding: new EdgeInsets.symmetric(horizontal: 16.0),
        children: <Widget>
        [
          new Container
          (
            margin: new EdgeInsets.symmetric(vertical: 16.0, horizontal: 54.0),
            child: new Material
            (
              elevation: 8.0,
              color: Colors.black,
              borderRadius: new BorderRadius.circular(32.0),
              child: new InkWell
              (
                onTap: () {},
                child: new Padding
                (
                  padding: new EdgeInsets.all(12.0),
                  child: new Row
                  (
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>
                    [
                      new Icon(Icons.add, color: Colors.white),
                      new Padding(padding: new EdgeInsets.only(right: 16.0)),
                      new Text('ADD A NEW ITEM', style: new TextStyle(color: Colors.white))
                    ],
                  ),
                ),
              ),
            )
          ),
          new ShopItem(),
          new BadShopItem(),
          new NewShopItem()
        ],
      )
    );
  }
}

class ShopItem extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return new Padding
    (
      padding: new EdgeInsets.only(bottom: 16.0),
      child: new Stack
      (
        children: <Widget>
        [
          /// Item card
          new Align
          (
            alignment: Alignment.topCenter,
            child: new SizedBox.fromSize
            (
              size: new Size.fromHeight(172.0),
              child: new Stack
              (
                fit: StackFit.expand,
                children: <Widget>
                [
                  /// Item description inside a material
                  new Container
                  (
                    margin: new EdgeInsets.only(top: 24.0),
                    child: new Material
                    (
                      elevation: 14.0,
                      borderRadius: new BorderRadius.circular(12.0),
                      shadowColor: new Color(0x802196F3),
                      color: Colors.white,
                      child: new InkWell
                      (
                        onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (_) => new ItemReviewsPage())),
                        child: new Padding
                        (
                          padding: new EdgeInsets.all(24.0),
                          child: new Column
                          (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>
                            [
                              /// Title and rating
                              new Column
                              (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>
                                [
                                  new Text('Nike Jordan III', style: new TextStyle(color: Colors.blueAccent)),
                                  new Row
                                  (
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>
                                    [
                                      new Text('4.6', style: new TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0)),
                                      new Icon(Icons.star, color: Colors.black, size: 24.0),
                                    ],
                                  ),
                                ],
                              ),
                              /// Infos
                              new Row
                              (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>
                                [
                                  new Text('Bought', style: new TextStyle()),
                                  new Padding
                                  (
                                    padding: new EdgeInsets.symmetric(horizontal: 4.0),
                                    child: new Text('1,361', style: new TextStyle(fontWeight: FontWeight.w700)),
                                  ),
                                  new Text('times for a profit of', style: new TextStyle()),
                                  new Padding
                                  (
                                    padding: new EdgeInsets.symmetric(horizontal: 4.0),
                                    child: new Material
                                    (
                                      borderRadius: new BorderRadius.circular(8.0),
                                      color: Colors.green,
                                      child: new Padding
                                      (
                                        padding: new EdgeInsets.all(4.0),
                                        child: new Text('\$ 13K', style: new TextStyle(color: Colors.white)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  /// Item image
                  new Align
                  (
                    alignment: Alignment.topRight,
                    child: new Padding
                    (
                      padding: new EdgeInsets.only(right: 16.0),
                      child: new SizedBox.fromSize
                      (
                        size: new Size.fromRadius(54.0),
                        child: new Material
                        (
                          elevation: 20.0,
                          shadowColor: new Color(0x802196F3),
                          shape: new CircleBorder(),
                          child: new Image.asset('res/shoes1.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ),
          ),
          /// Review
          new Padding
          (
            padding: new EdgeInsets.only(top: 160.0, left: 32.0),
            child: new Material
            (
              elevation: 12.0,
              color: Colors.transparent,
              borderRadius: new BorderRadius.only
              (
                topLeft: new Radius.circular(20.0),
                bottomLeft: new Radius.circular(20.0),
                bottomRight: new Radius.circular(20.0),
              ),
              child: new Container
              (
                decoration: new BoxDecoration
                (
                  gradient: new LinearGradient
                  (
                    colors: [ new Color(0xFF84fab0), new Color(0xFF8fd3f4) ],
                    end: Alignment.topLeft,
                    begin: Alignment.bottomRight
                  )
                ),
                child: new Container
                (
                  margin: new EdgeInsets.symmetric(vertical: 4.0),
                  child: new ListTile
                  (
                    leading: new CircleAvatar
                    (
                      backgroundColor: Colors.purple,
                      child: new Text('AI'),
                    ),
                    title: new Text('Ivascu Adrian ★★★★★', style: new TextStyle()),
                    subtitle: new Text('The shoes were shipped one day before the shipping date, but this wasn\'t at all a problem :). The shoes are very comfortable and good looking', maxLines: 2, overflow: TextOverflow.ellipsis, style: new TextStyle()),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BadShopItem extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return new Padding
    (
      padding: new EdgeInsets.only(bottom: 16.0),
      child: new Stack
      (
        children: <Widget>
        [
          /// Item card
          new Align
          (
            alignment: Alignment.topCenter,
            child: new SizedBox.fromSize
            (
              size: new Size.fromHeight(172.0),
              child: new Stack
              (
                fit: StackFit.expand,
                children: <Widget>
                [
                  /// Item description inside a material
                  new Container
                  (
                    margin: new EdgeInsets.only(top: 24.0),
                    child: new Material
                    (
                      elevation: 14.0,
                      borderRadius: new BorderRadius.circular(12.0),
                      shadowColor: new Color(0x802196F3),
                      color: Colors.transparent,
                      child: new Container
                      ( 
                        decoration: new BoxDecoration
                        (
                          gradient: new LinearGradient
                          (
                            colors: [ new Color(0xFFDA4453), new Color(0xFF89216B) ]
                          )
                        ),
                        child: new Padding
                        (
                          padding: new EdgeInsets.all(24.0),
                          child: new Column
                          (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>
                            [
                              /// Title and rating
                              new Column
                              (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>
                                [
                                  new Text('Nike Jordan III', style: new TextStyle(color: Colors.white)),
                                  new Row
                                  (
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>
                                    [
                                      new Text('1.3', style: new TextStyle(color: Colors.amber, fontWeight: FontWeight.w700, fontSize: 34.0)),
                                      new Icon(Icons.star, color: Colors.amber, size: 24.0),
                                    ],
                                  ),
                                ],
                              ),
                              /// Infos
                              new Row
                              (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>
                                [
                                  new Text('Bought', style: new TextStyle(color: Colors.white)),
                                  new Padding
                                  (
                                    padding: new EdgeInsets.symmetric(horizontal: 4.0),
                                    child: new Text('3', style: new TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
                                  ),
                                  new Text('times for a profit of', style: new TextStyle(color: Colors.white)),
                                  new Padding
                                  (
                                    padding: new EdgeInsets.symmetric(horizontal: 4.0),
                                    child: new Material
                                    (
                                      borderRadius: new BorderRadius.circular(8.0),
                                      color: Colors.green,
                                      child: new Padding
                                      (
                                        padding: new EdgeInsets.all(4.0),
                                        child: new Text('\$ 363', style: new TextStyle(color: Colors.white)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  /// Item image
                  new Align
                  (
                    alignment: Alignment.topRight,
                    child: new Padding
                    (
                      padding: new EdgeInsets.only(right: 16.0),
                      child: new SizedBox.fromSize
                      (
                        size: new Size.fromRadius(54.0),
                        child: new Material
                        (
                          elevation: 20.0,
                          shadowColor: new Color(0x802196F3),
                          shape: new CircleBorder(),
                          child: new Image.asset('res/shoes1.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ),
          ),
          /// Review
          new Padding
          (
            padding: new EdgeInsets.only(top: 160.0, right: 32.0,),
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
                margin: new EdgeInsets.symmetric(vertical: 4.0),
                child: new ListTile
                (
                  leading: new CircleAvatar
                  (
                    backgroundColor: Colors.purple,
                    child: new Text('AI'),
                  ),
                  title: new Text('Ivascu Adrian ★☆☆☆☆'),
                  subtitle: new Text('The shoes that arrived weren\'t the same as the ones in the image...', maxLines: 2, overflow: TextOverflow.ellipsis),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NewShopItem extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return new Padding
    (
      padding: new EdgeInsets.only(bottom: 16.0),
      child: new Align
      (
        alignment: Alignment.topCenter,
        child: new SizedBox.fromSize
        (
          size: new Size.fromHeight(172.0),
          child: new Stack
          (
            fit: StackFit.expand,
            children: <Widget>
            [
              /// Item description inside a material
              new Container
              (
                margin: new EdgeInsets.only(top: 24.0),
                child: new Material
                (
                  elevation: 14.0,
                  borderRadius: new BorderRadius.circular(12.0),
                  shadowColor: new Color(0x802196F3),
                  color: Colors.white,
                  child: new Padding
                  (
                    padding: new EdgeInsets.all(24.0),
                    child: new Column
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>
                      [
                        /// Title and rating
                        new Column
                        (
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>
                          [
                            new Text('[New] Nike Jordan III', style: new TextStyle(color: Colors.blueAccent)),
                            new Row
                            (
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>
                              [
                                new Text('No reviews', style: new TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0)),
                              ],
                            ),
                          ],
                        ),
                        /// Infos
                        new Row
                        (
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>
                          [
                            new Text('Bought', style: new TextStyle()),
                            new Padding
                            (
                              padding: new EdgeInsets.symmetric(horizontal: 4.0),
                              child: new Text('0', style: new TextStyle(fontWeight: FontWeight.w700)),
                            ),
                            new Text('times for a profit of', style: new TextStyle()),
                            new Padding
                            (
                              padding: new EdgeInsets.symmetric(horizontal: 4.0),
                              child: new Material
                              (
                                borderRadius: new BorderRadius.circular(8.0),
                                color: Colors.green,
                                child: new Padding
                                (
                                  padding: new EdgeInsets.all(4.0),
                                  child: new Text('\$ 0', style: new TextStyle(color: Colors.white)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              /// Item image
              new Align
              (
                alignment: Alignment.topRight,
                child: new Padding
                (
                  padding: new EdgeInsets.only(right: 16.0),
                  child: new SizedBox.fromSize
                  (
                    size: new Size.fromRadius(54.0),
                    child: new Material
                    (
                      elevation: 20.0,
                      shadowColor: new Color(0x802196F3),
                      shape: new CircleBorder(),
                      child: new Image.asset('res/shoes1.png'),
                    ),
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}