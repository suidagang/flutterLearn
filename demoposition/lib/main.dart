import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
	@override
	Widget build(BuildContext context){
    var stack = new Stack(
		alignment: const FractionalOffset(0.5,0.1),
		children: <Widget>[
			new CircleAvatar(
				backgroundImage:new NetworkImage('https://avatar-static.segmentfault.com/469/377/469377989-5b875deeb55f3_huge256'),
				radius: 100.0,
			),
			new Positioned(
				top: 10.0,
				left: 10.0,
				child: new Text("哈哈"),
			),
			new Positioned(
				bottom: 10.0,
				right: 10.0,
				child: new Text("嘿嘿"),
			)
		],
    );
		return MaterialApp(
			title:"suigang",
			home:Scaffold(
				appBar: new AppBar(title:new Text("demo-stack")),
				body: Center(
					child: stack,
				),
			) ,
		);
	}
}