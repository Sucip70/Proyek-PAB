import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => HomePage(),
      );
  List<String> dataY = <String>["saya", "suka", "saya", "sadoaisj"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(0.8),
          children: <Widget>[
            Container(
              height: 200,
              padding: const EdgeInsets.all(20),
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  color: Colors.deepPurpleAccent,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Mulai bandingkan keinginanmu untuk keputusan yang terbaik",
                          textAlign: TextAlign.center,
                        ),
                        FlatButton(
                            color: Colors.deepPurple[200],
                            onPressed: () {
                              // print("data.length");
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Text('Compare'))
                      ],
                    ),
                  )),
            ),
            Text("Populer dibandingkan"),
            Container(
                height: 500,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    padding: const EdgeInsets.all(0.8),
                    itemCount: dataY.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 80,
                        color: Colors.cyan,
                        child: Center(child: Text('${dataY[index]}')),
                      );
                    })),
          ],
        ));
  }
}
