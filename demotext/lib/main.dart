import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
    @override
	Widget build(BuildContext context){
		return MaterialApp(
			title:"Welcome to Flutter",
			home:Scaffold(
				appBar:AppBar(
					title:Text("Welcome to Flutter hha" )
				),
				body:Center(
					child:Text(
						"Hello World suigang haha ok 重启睡觉觉福克斯RKO 快乐风水咯居然为 VC",
						textAlign: TextAlign.left,
						maxLines: 1,
						overflow: TextOverflow.ellipsis,
						style: TextStyle(
							fontSize: 25.0,
							color: Color.fromARGB(255, 255, 125, 125),
							decoration: TextDecoration.underline,
							decorationStyle: TextDecorationStyle.solid,
						),
					)
				),
			),
		);
	}
}