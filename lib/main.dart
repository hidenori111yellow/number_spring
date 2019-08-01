import 'package:flutter/material.dart';
import 'package:number_spring/utils/share_preferece.dart';
import 'package:number_spring/calculate.dart';
import 'package:number_spring/pages/drawer.dart';

final myAppKey = GlobalKey<MyHomePageState>();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Future<bool> _initFutureAppSharedPrefs(BuildContext context) async {
    await SharedPref.setInstance();
    return true;
  }
  
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initFutureAppSharedPrefs(context),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot){
        if (!snapshot.hasData) return CircularProgressIndicator();
        if (!snapshot.data) return CircularProgressIndicator();
        
        return MaterialApp(
          home: MyHomePage(key: myAppKey,),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
    final textControllerResult = TextEditingController();
  
  @override
  void initState() {
    super.initState();
    textControllerResult.addListener(() {});
  }
  @override
  void dispose() {
    textControllerResult.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text('NumberSpring'),
      ),
      drawer: AppDrawer(),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:20.0),
            child: Container(
              height: MediaQuery.of(context).size.height/3.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                     GestureDetector(
                       child: Opacity(
                                  child: Image.asset('images/ビリヤード球1.jpg',
                                          height: 50,),
                                  opacity: SharedPref.getBall(1) ? 1 : 0.25,
                       ),
                       onTap: (){
                         final value = SharedPref.getBall(1);
                         SharedPref.setBall(1,!value);
                         setState(() {
                         });
                       },
                      ),
                     GestureDetector(
                       child: Opacity(
                                  child: Image.asset('images/ビリヤード球2.jpg',
                                          height: 50,),
                                  opacity: SharedPref.getBall(2) ? 1 : 0.25,
                       ),
                       onTap: (){
                         final value = SharedPref.getBall(2);
                         SharedPref.setBall(2,!value);
                         setState(() {
                         });
                       },
                      ),
                      GestureDetector(
                       child: Opacity(
                                  child: Image.asset('images/ビリヤード球3.jpg',
                                          height: 50,),
                                  opacity: SharedPref.getBall(3) ? 1 : 0.25,
                       ),
                       onTap: (){
                         final value = SharedPref.getBall(3);
                         SharedPref.setBall(3,!value);
                         setState(() {
                         });
                       },
                      ),
                      GestureDetector(
                       child: Opacity(
                                  child: Image.asset('images/ビリヤード球4.jpg',
                                          height: 50,),
                                  opacity: SharedPref.getBall(4) ? 1 : 0.25,
                       ),
                       onTap: (){
                         final value = SharedPref.getBall(4);
                         SharedPref.setBall(4,!value);
                         setState(() {
                         });
                       },
                      ),
                      GestureDetector(
                       child: Opacity(
                                  child: Image.asset('images/ビリヤード球5.jpg',
                                          height: 50,),
                                  opacity: SharedPref.getBall(5) ? 1 : 0.25,
                       ),
                       onTap: (){
                         final value = SharedPref.getBall(5);
                         SharedPref.setBall(5,!value);
                         setState(() {
                         });
                       },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                       child: Opacity(
                                  child: Image.asset('images/ビリヤード球6.jpg',
                                          height: 50,),
                                  opacity: SharedPref.getBall(6) ? 1 : 0.25,
                       ),
                       onTap: (){
                         final value = SharedPref.getBall(6);
                         SharedPref.setBall(6,!value);
                         setState(() {
                         });
                       },
                      ),
                      GestureDetector(
                       child: Opacity(
                                  child: Image.asset('images/ビリヤード球7.jpg',
                                          height: 50,),
                                  opacity: SharedPref.getBall(7) ? 1 : 0.25,
                       ),
                       onTap: (){
                         final value = SharedPref.getBall(7);
                         SharedPref.setBall(7,!value);
                         setState(() {
                         });
                       },
                      ),
                      GestureDetector(
                       child: Opacity(
                                  child: Image.asset('images/ビリヤード球8.jpg',
                                          height: 50,),
                                  opacity: SharedPref.getBall(8) ? 1 : 0.25,
                       ),
                       onTap: (){
                         final value = SharedPref.getBall(8);
                         SharedPref.setBall(8,!value);
                         setState(() {
                         });
                       },
                      ),
                      GestureDetector(
                       child: Opacity(
                                  child: Image.asset('images/ビリヤード球9.jpg',
                                          height: 50,),
                                  opacity: SharedPref.getBall(9) ? 1 : 0.25,
                       ),
                       onTap: (){
                         final value = SharedPref.getBall(9);
                         SharedPref.setBall(9,!value);
                         setState(() {
                         });
                       },
                      ),
                      GestureDetector(
                       child: Opacity(
                                  child: Image.asset('images/ビリヤード球10.jpg',
                                          height: 50,),
                                  opacity: SharedPref.getBall(10) ? 1 : 0.25,
                       ),
                       onTap: (){
                         final value = SharedPref.getBall(10);
                         SharedPref.setBall(10,!value);
                         setState(() {
                         });
                       },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                       child: Opacity(
                                  child: Image.asset('images/ビリヤード球11.jpg',
                                          height: 50,),
                                  opacity: SharedPref.getBall(11) ? 1 : 0.25,
                       ),
                       onTap: (){
                         final value = SharedPref.getBall(11);
                         SharedPref.setBall(11,!value);
                         setState(() {
                         });
                       },
                      ),
                      GestureDetector(
                       child: Opacity(
                                  child: Image.asset('images/ビリヤード球12.jpg',
                                          height: 50,),
                                  opacity: SharedPref.getBall(12) ? 1 : 0.25,
                       ),
                       onTap: (){
                         final value = SharedPref.getBall(12);
                         SharedPref.setBall(12,!value);
                         setState(() {
                         });
                       },
                      ),
                      GestureDetector(
                       child: Opacity(
                                  child: Image.asset('images/ビリヤード球13.jpg',
                                          height: 50,),
                                  opacity: SharedPref.getBall(13) ? 1 : 0.25,
                       ),
                       onTap: (){
                         final value = SharedPref.getBall(13);
                         SharedPref.setBall(13,!value);
                         setState(() {
                         });
                       },
                      ),
                      GestureDetector(
                       child: Opacity(
                                  child: Image.asset('images/ビリヤード球14.jpg',
                                          height: 50,),
                                  opacity: SharedPref.getBall(14) ? 1 : 0.25,
                       ),
                       onTap: (){
                         final value = SharedPref.getBall(14);
                         SharedPref.setBall(14,!value);
                         setState(() {
                         });
                       },
                      ),
                      GestureDetector(
                       child: Opacity(
                                  child: Image.asset('images/ビリヤード球15.jpg',
                                          height: 50,),
                                  opacity: SharedPref.getBall(15) ? 1 : 0.25,
                       ),
                       onTap: (){
                         final value = SharedPref.getBall(15);
                         SharedPref.setBall(15,!value);
                         setState(() {
                         });
                       },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:50.0),
            child: TextField(
                  decoration: new InputDecoration.collapsed(
                      hintText: "1番",
                      hintStyle: TextStyle(fontFamily: 'RobotoMono')
                  ),
                  textInputAction: TextInputAction.none,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'RobotoMono',
                      fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
                  controller: textControllerResult,
                  onTap: () {
                    FocusScope.of(context).requestFocus(new FocusNode());
                  },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:60.0),
            child: RaisedButton(
              onPressed: (){
                textControllerResult.text = Calc().getNumber.toString() + '番';                  
              },
              child: Text('次のボール',style: TextStyle(),),
            ),
          ),
        ],
      ),
    );
  }
}
