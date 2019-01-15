import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
	@override
	Widget build(BuildContext context){
		return MaterialApp(
			title:"suigang",
			home:Scaffold(
				appBar: new AppBar(title:new Text("demo-column")),
			) ,
		);
	}
}