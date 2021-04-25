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
          title: Text("Rank"),
        ),
        body: ListView(padding: const EdgeInsets.all(15.0), children: [
          Row(
            children: [Text('Device')],
          ),
          Text('Peringkat Teratas'),
          Container(
            height: 500,
            child: ListView.separated(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Container(
                      height: 50,
                      child: Row(
                        children: [
                          Text('${index + 1}'),
                          Container(
                            width: 50,
                            color: Colors.amber,
                          ),
                          Text('${data[index]}')
                        ],
                      ));
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider()),
          )
        ]));
  }
}
