import 'package:flutter/material.dart';

class RankPage extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => RankPage(),
      );

  List<String> data = ['oke', 'adjsaldj', 'sadijaiosjda', 'abdibausb'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Category"),
        ),
        body: ListView(padding: const EdgeInsets.all(0.8), children: [
          // Row(
          //   children: [Text('Device')],
          // ),
          Text('Peringkat Teratas'),
          Container(
            height: 500,
            child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Container(height: 50, child: Text('${data[index]}'));
                }),
          )
        ]));
  }
}
