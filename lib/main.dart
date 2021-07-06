import 'package:ana/main_model.dart';
import 'package:ana/next_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
final String kboyText ='KBOY';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('コリアンダー'),
          ),
          body: Consumer< MainModel>(builder: (context, model, child){
              return Center(
                child: Column(
                  children: [
                    Text(
                      model.kboyText,
                      style: TextStyle(fontSize:30
                      ),
                    ),
                    ElevatedButton(
                        onPressed: (){
                          // ここで何かする
                          model.changeKboyText();
                        },
                        child: Text('ボタン'))
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}