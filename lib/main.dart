import 'package:default_counter_app_stateless/screens/home_page.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(App());
}

class App extends StatelessWidget{
  const App({Key key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      debugShowCheckedModeBanner: false,
      home:Homepage() ,
    );
    throw UnimplementedError();
  }
}
