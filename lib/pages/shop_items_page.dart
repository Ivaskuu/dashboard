import 'package:flutter/material.dart';
import 'item_reviews_page.dart';

class ShopItemsPage extends StatefulWidget
{
  @override
  _ShopItemsPageState createState() => _ShopItemsPageState();
}

class _ShopItemsPageState extends State<ShopItemsPage>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar
      (
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton
        (
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: Text('Shop Items (3)', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
        // actions: <Widget>
        // [
        //   Container
        //   (
        //     margin: EdgeInsets.only(right: 8.0),
        //     child: Row
        //     (
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: <Widget>
        //       [
        //         Text('beclothed.com', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 14.0)),
        //         Icon(Icons.arrow_drop_down, color: Colors.black54)
        //       ],
        //     ),
        //   )
        // ],
      ),
      body: ListView
      (
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        children: <Widget>
        [
          Container
          (
            margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 54.0),
            child: Material
            (
              elevation: 8.0,
              color: Colors.black,
              borderRadius: BorderRadius.circular(32.0),
              child: InkWell
              (
                onTap: () {},
                child: Padding
                (
                  padding: EdgeInsets.all(12.0),
                  child: Row
                  (
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>
                    [
                      Icon(Icons.add, color: Colors.white),
                      Padding(padding: EdgeInsets.only(right: 16.0)),
                      Text('ADD A ITEM', style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
              ),
            )
          ),
          ShopItem(),
          BadShopItem(),
          NewShopItem()
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
    return Padding
    (
      padding: EdgeInsets.only(bottom: 16.0),
      child: Stack
      (
        children: <Widget>
        [
          /// Item card
          Align
          (
            alignment: Alignment.topCenter,
            child: SizedBox.fromSize
            (
              size: Size.fromHeight(172.0),
              child: Stack
              (
                fit: StackFit.expand,
                children: <Widget>
                [
                  /// Item description inside a material
                  Container
                  (
                    margin: EdgeInsets.only(top: 24.0),
                    child: Material
                    (
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(12.0),
                      shadowColor: Color(0x802196F3),
                      color: Colors.white,
                      child: InkWell
                      (
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => ItemReviewsPage())),
                        child: Padding
                        (
                          padding: EdgeInsets.all(24.0),
                          child: Column
                          (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>
                            [
                              /// Title and rating
                              Column
                              (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>
                                [
                                  Text('Nike Jordan III', style: TextStyle(color: Colors.blueAccent)),
                                  Row
                                  (
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>
                                    [
                                      Text('4.6', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0)),
                                      Icon(Icons.star, color: Colors.black, size: 24.0),
                                    ],
                                  ),
                                ],
                              ),
                              /// Infos
                              Row
                              (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>
                                [
                                  Text('Bought', style: TextStyle()),
                                  Padding
                                  (
                                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                                    child: Text('1,361', style: TextStyle(fontWeight: FontWeight.w700)),
                                  ),
                                  Text('times for a profit of', style: TextStyle()),
                                  Padding
                                  (
                                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                                    child: Material
                                    (
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: Colors.green,
                                      child: Padding
                                      (
                                        padding: EdgeInsets.all(4.0),
                                        child: Text('\$ 13K', style: TextStyle(color: Colors.white)),
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
                  Align
                  (
                    alignment: Alignment.topRight,
                    child: Padding
                    (
                      padding: EdgeInsets.only(right: 16.0),
                      child: SizedBox.fromSize
                      (
                        size: Size.fromRadius(54.0),
                        child: Material
                        (
                          elevation: 20.0,
                          shadowColor: Color(0x802196F3),
                          shape: CircleBorder(),
                          child: Image.asset('res/shoes1.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ),
          ),
          /// Review
          Padding
          (
            padding: EdgeInsets.only(top: 160.0, left: 32.0),
            child: Material
            (
              elevation: 12.0,
              color: Colors.transparent,
              borderRadius: BorderRadius.only
              (
                topLeft: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              child: Container
              (
                decoration: BoxDecoration
                (
                  gradient: LinearGradient
                  (
                    colors: [ Color(0xFF84fab0), Color(0xFF8fd3f4) ],
                    end: Alignment.topLeft,
                    begin: Alignment.bottomRight
                  )
                ),
                child: Container
                (
                  margin: EdgeInsets.symmetric(vertical: 4.0),
                  child: ListTile
                  (
                    leading: CircleAvatar
                    (
                      backgroundColor: Colors.purple,
                      child: Text('AI'),
                    ),
                    title: Text('Ivascu Adrian ★★★★★', style: TextStyle()),
                    subtitle: Text('The shoes were shipped one day before the shipping date, but this wasn\'t at all a problem :). The shoes are very comfortable and good looking', maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle()),
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
    return Padding
    (
      padding: EdgeInsets.only(bottom: 16.0),
      child: Stack
      (
        children: <Widget>
        [
          /// Item card
          Align
          (
            alignment: Alignment.topCenter,
            child: SizedBox.fromSize
            (
              size: Size.fromHeight(172.0),
              child: Stack
              (
                fit: StackFit.expand,
                children: <Widget>
                [
                  /// Item description inside a material
                  Container
                  (
                    margin: EdgeInsets.only(top: 24.0),
                    child: Material
                    (
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(12.0),
                      shadowColor: Color(0x802196F3),
                      color: Colors.transparent,
                      child: Container
                      ( 
                        decoration: BoxDecoration
                        (
                          gradient: LinearGradient
                          (
                            colors: [ Color(0xFFDA4453), Color(0xFF89216B) ]
                          )
                        ),
                        child: Padding
                        (
                          padding: EdgeInsets.all(24.0),
                          child: Column
                          (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>
                            [
                              /// Title and rating
                              Column
                              (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>
                                [
                                  Text('Nike Jordan III', style: TextStyle(color: Colors.white)),
                                  Row
                                  (
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>
                                    [
                                      Text('1.3', style: TextStyle(color: Colors.amber, fontWeight: FontWeight.w700, fontSize: 34.0)),
                                      Icon(Icons.star, color: Colors.amber, size: 24.0),
                                    ],
                                  ),
                                ],
                              ),
                              /// Infos
                              Row
                              (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>
                                [
                                  Text('Bought', style: TextStyle(color: Colors.white)),
                                  Padding
                                  (
                                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                                    child: Text('3', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
                                  ),
                                  Text('times for a profit of', style: TextStyle(color: Colors.white)),
                                  Padding
                                  (
                                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                                    child: Material
                                    (
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: Colors.green,
                                      child: Padding
                                      (
                                        padding: EdgeInsets.all(4.0),
                                        child: Text('\$ 363', style: TextStyle(color: Colors.white)),
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
                  Align
                  (
                    alignment: Alignment.topRight,
                    child: Padding
                    (
                      padding: EdgeInsets.only(right: 16.0),
                      child: SizedBox.fromSize
                      (
                        size: Size.fromRadius(54.0),
                        child: Material
                        (
                          elevation: 20.0,
                          shadowColor: Color(0x802196F3),
                          shape: CircleBorder(),
                          child: Image.asset('res/shoes1.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ),
          ),
          /// Review
          Padding
          (
            padding: EdgeInsets.only(top: 160.0, right: 32.0,),
            child: Material
            (
              elevation: 12.0,
              color: Colors.white,
              borderRadius: BorderRadius.only
              (
                topRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              child: Container
              (
                margin: EdgeInsets.symmetric(vertical: 4.0),
                child: ListTile
                (
                  leading: CircleAvatar
                  (
                    backgroundColor: Colors.purple,
                    child: Text('AI'),
                  ),
                  title: Text('Ivascu Adrian ★☆☆☆☆'),
                  subtitle: Text('The shoes that arrived weren\'t the same as the ones in the image...', maxLines: 2, overflow: TextOverflow.ellipsis),
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
    return Padding
    (
      padding: EdgeInsets.only(bottom: 16.0),
      child: Align
      (
        alignment: Alignment.topCenter,
        child: SizedBox.fromSize
        (
          size: Size.fromHeight(172.0),
          child: Stack
          (
            fit: StackFit.expand,
            children: <Widget>
            [
              /// Item description inside a material
              Container
              (
                margin: EdgeInsets.only(top: 24.0),
                child: Material
                (
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(12.0),
                  shadowColor: Color(0x802196F3),
                  color: Colors.white,
                  child: Padding
                  (
                    padding: EdgeInsets.all(24.0),
                    child: Column
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>
                      [
                        /// Title and rating
                        Column
                        (
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>
                          [
                            Text('[New] Nike Jordan III', style: TextStyle(color: Colors.blueAccent)),
                            Row
                            (
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>
                              [
                                Text('No reviews', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0)),
                              ],
                            ),
                          ],
                        ),
                        /// Infos
                        Row
                        (
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>
                          [
                            Text('Bought', style: TextStyle()),
                            Padding
                            (
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text('0', style: TextStyle(fontWeight: FontWeight.w700)),
                            ),
                            Text('times for a profit of', style: TextStyle()),
                            Padding
                            (
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Material
                              (
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.green,
                                child: Padding
                                (
                                  padding: EdgeInsets.all(4.0),
                                  child: Text('\$ 0', style: TextStyle(color: Colors.white)),
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
              Align
              (
                alignment: Alignment.topRight,
                child: Padding
                (
                  padding: EdgeInsets.only(right: 16.0),
                  child: SizedBox.fromSize
                  (
                    size: Size.fromRadius(54.0),
                    child: Material
                    (
                      elevation: 20.0,
                      shadowColor: Color(0x802196F3),
                      shape: CircleBorder(),
                      child: Image.asset('res/shoes1.png'),
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