import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:number_spring/utils/share_preferece.dart';
import 'package:number_spring/main.dart';

final appDrawerStateKey = GlobalKey<AppDrawerState>();

class AppDrawer extends StatefulWidget {
  @override
  AppDrawerState createState() => AppDrawerState();
}

class AppDrawerState extends State<AppDrawer> {
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
              if(SharedPref.getAndroidStyle()){
                showDialog(context: context,
                builder: (BuildContext context){
                  return AlertDialog(
                    content: Text('現在のゲームをリセットしてもよろしいですか？'),
                    actions: <Widget>[
                      FlatButton(child: Text('いいえ'),onPressed: (){
                        Navigator.pop(context);
                      },),
                      FlatButton(child: Text('はい'),onPressed: (){
                        for(int i = 1; i <= 15; i++){
                          if(!SharedPref.getBall(i)){
                          SharedPref.setBall(i, true);                          
                          }
                        }
                        myAppKey.currentState.setState((){});

                        Navigator.pop(context);
                      },),
                    ],
                  );
                },
              );
              }else{
                showDialog(context: context,
                builder: (BuildContext context){
                  return CupertinoAlertDialog(
                    content: Text('現在のゲームをリセットしてもよろしいですか？'),
                    actions: <Widget>[
                      FlatButton(child: Text('いいえ'),onPressed: (){
                        Navigator.pop(context);
                      },),
                      FlatButton(child: Text('はい'),onPressed: (){
                        for(int i = 1; i <= 15; i++){
                          if(!SharedPref.getBall(i)){
                          SharedPref.setBall(i, true);                          
                          }
                        }
                        myAppKey.currentState.setState((){});

                        Navigator.pop(context);
                      },),
                    ],
                  );
                },
              );
              }
            },
          ),
          SwitchListTile(
            // secondary: Row(
            //   children: <Widget>[
            //     Icon(Icons.phone_iphone),
            //     Icon(Icons.phone_android),
            //   ],
            // ),
            title: Row(
              children: <Widget>[
                Icon(Icons.phone_iphone),
                Padding(
                  padding: const EdgeInsets.only(right:8.0),
                  child: Icon(Icons.phone_android),
                ),
                Text('iOS/Android'),
              ],
            ),
            value: SharedPref.getAndroidStyle(),
            onChanged: (bool value) async{
              SharedPref.setAndroidStyle(value);
              
              myAppKey.currentState.setState((){});
              
            },
          ),
        ],
      ),
    );
  }
}