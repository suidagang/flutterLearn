import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
	@override
	Widget build(BuildContext context){
		return MaterialApp(
			title:"suigang",
			home:Scaffold(
				appBar: new AppBar(title:new Text("demo-column")),
				body: Center(child:Column(
						crossAxisAlignment: CrossAxisAlignment.center,
						mainAxisAlignment: MainAxisAlignment.center,
						
						children: <Widget>[
							Text("第一行"),
							Expanded(child:Text("第二行颠倒是非") ,) ,
							Text("第三行"),
							Text("第四行")
						],
					),
				),
			) ,
		);
	}
}