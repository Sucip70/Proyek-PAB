import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => SearchPage(),
      );
  List<String> device = [
    'mobile',
    'headphone',
    'smartwatch',
    'tablet',
    'desktop',
    'mouse',
    'laptop',
    'phone'
  ];
  List<String> category = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Rank"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(0.8),
          children: <Widget>[
            Text('Device'),
            Container(
              height: 200,
              color: Colors.amber,
              child: GridView.count(
                primary: false,
                crossAxisCount: 4,
                children: List.generate(device.length, (index) {
                  return Expanded(
                      flex: 4,
                      child: Container(
                        height: 80,
                        // color: Colors.green,
                        padding: const EdgeInsets.all(1.0),
                        child: Card(
                            child: InkWell(
                              splashColor: Colors.blue.withAlpha(30),
                              onTap: () {
                                print('$index');
                              },
                              child: Container(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Image.asset(
                                  //   device[index][1],
                                  //   scale: 5,
                                  // ),
                                  Text('${device[index]}')
                                ],
                              )),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0))),
                      ));
                }),
              ),
            ),

            Text('Temukan Berdasarkan'),
            // GridView.count(
            //   primary: false,
            //   crossAxisCount: 3,
            //   children: List.generate(device.length, (index) {
            //     return Expanded(
            //         flex: 3,
            //         child: Container(
            //           height: 80,
            //           // color: Colors.green,
            //           padding: const EdgeInsets.all(1.0),
            //           child: Card(
            //               child: InkWell(
            //                 splashColor: Colors.blue.withAlpha(30),
            //                 onTap: () {
            //                   print('$index');
            //                 },
            //                 child: Container(
            //                     child: Column(
            //                   mainAxisAlignment: MainAxisAlignment.center,
            //                   children: [
            //                     Image.asset(
            //                       category[index][1],
            //                       scale: 5,
            //                     ),
            //                     Text(category[index][0])
            //                   ],
            //                 )),
            //               ),
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(15.0))),
            //         ));
            //   }),
            // ),
          ],
        ));
  }
}
