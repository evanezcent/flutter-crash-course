import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

// Kerangka
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Instagram'),
          centerTitle: true,
          backgroundColor: Colors.indigo,
          actions: <Widget>[Icon(Icons.add_a_photo)],
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Colors.redAccent,
                            style: BorderStyle.solid
                          ),
                        borderRadius: BorderRadius.circular(20)
                      ),

                      child: ClipOval(
                        child: CachedNetworkImage(
                          imageUrl: 'https://iv1.lisimg.com/image/4898355/321full-toru-yamashita.jpg',
                        )
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  // Untuk responsive
                  Expanded(child: Text('pratamays')),
                  Icon(Icons.more_vert)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                child:  Image.network(
                  'https://a.wattpad.com/cover/79427568-288-k268148.jpg'),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.favorite_border),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.comment),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Container(
                          alignment: Alignment.centerLeft,
                          child: Icon(Icons.send))),
                  Icon(Icons.bookmark),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child: Text('Liked by shahnazasyf and 100 others')),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        text: 'pratamays '),
                    TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        text: ' Waaaaa toru keren bet dah'),
                    TextSpan(
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                        text: ' #OneOkeRock')
                  ]),
                ),
              )
            ],
          ),
        ));
  }
}

// Body
