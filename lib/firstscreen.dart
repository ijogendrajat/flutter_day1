import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: FooterView(
          children: <Widget>[
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Padding(
                  padding: EdgeInsets.only(top: 50, left: 70),
                  child: ElevatedButton(
                    // Within the `FirstScreen` widget
                    onPressed: () {
                      // Navigate to the second screen using a named route.
                      Navigator.pushNamed(context, '/second');
                    },
                    child: Text('Second Screen'),
                  ),
                )
              ],
            ),
          ],
          footer: new Footer(
            child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Center(
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Container(
                            height: 45.0,
                            width: 45.0,
                            child: Center(
                              child: Card(
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      25.0), // half of height and width of Image
                                ),
                                child: IconButton(
                                  icon: new Icon(
                                    Icons.home,
                                    size: 20.0,
                                  ),
                                  color: Colors.blue,
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/');
                                  },
                                ),
                              ),
                            )),
                        new Container(
                            height: 45.0,
                            width: 45.0,
                            child: Center(
                              child: Card(
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      25.0), // half of height and width of Image
                                ),
                                child: IconButton(
                                  icon: new Icon(
                                    Icons.login,
                                    size: 20.0,
                                  ),
                                  color: Color(0xFF162A49),
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/second');
                                  },
                                ),
                              ),
                            )),
                        new Container(
                            height: 45.0,
                            width: 45.0,
                            child: Center(
                              child: Card(
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      25.0), // half of height and width of Image
                                ),
                                child: IconButton(
                                  icon: new Icon(
                                    Icons.view_agenda,
                                    size: 20.0,
                                  ),
                                  color: Color(0xFF162A49),
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/third');
                                  },
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ]),
          )),
    );
  }
}
