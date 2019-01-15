import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
	@override
	Widget build(BuildContext context){
		return MaterialApp(
			title:"suigang",
			home:Scaffold(
				appBar: new AppBar(title:new Text("demorow")),
				body:new Row(
					children: <Widget>[
						new RaisedButton(
							onPressed: (){},
							color:Colors.redAccent,
							child:new Text("按钮")
						),
						Expanded(child: new RaisedButton(
							onPressed: (){},
							color:Colors.orangeAccent,
							child:new Text("黄色按钮")
						)) ,
						new RaisedButton(
							onPressed: (){},
							color:Colors.purple,
							child:new Text("按钮")
						),  
						
						
					],
				)
			),
			
		);
	}
}