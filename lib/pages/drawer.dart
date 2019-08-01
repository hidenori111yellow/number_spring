import 'package:flutter/material.dart';
import 'package:number_spring/utils/share_preferece.dart';
import 'package:number_spring/main.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text('設定'),
          ),
          ListTile(
            title: Text('再スタート'),
            onTap: (){
              showDialog(context: context,
              builder: (BuildContext context){
                return AlertDialog(
                  content: Text('現在のゲームをリセットしてもよろしいですか？'),
                  actions: <Widget>[
                    FlatButton(child: Text('いいえ'),onPressed: (){
                      Navigator.pop(context);
                    },),
                    FlatButton(child: Text('はい'),onPressed: (){
                      Stopwatch sw = new Stopwatch();
                      sw.start();
                      for(int i = 1; i <= 15; i++){
                        if(!SharedPref.getBall(i)){
                        SharedPref.setBall(i, true);                          
                        }
                      }
                      sw.stop();
                      
                      print('${sw.elapsedTicks} ms');                      
                      
                      myAppKey.currentState.setState((){});
                      
                      Navigator.pop(context);
                    },),
                  ],
                  );
              },
              );
            },
          ),
        ],
      ),
    );
  }
}