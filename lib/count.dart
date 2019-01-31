import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_model/model/count_model.dart';
class Count extends StatefulWidget {
  @override
  _CountState createState() => _CountState();
}

class _CountState extends State<Count>{
  @override
  Widget build(BuildContext context) {

    return ScopedModel<CountModel>(
        model: CountModel(),
        child: ScopedModelDescendant<CountModel>(builder: (context,child,model){
          return Scaffold(
            appBar: AppBar(
              title: Text('Top Screen'),

            ),
            body: Row(
              children: <Widget>[
                Container(
                  child: Text(model.count.toString()),
                ),
                Container(
                    child: Column(
                      children: <Widget>[
                        RaisedButton(onPressed:  () => model.increment())
                      ],
                    )
                )
              ],
            ),
          );
        }),
    );
    // TODO: implement build

  }
}