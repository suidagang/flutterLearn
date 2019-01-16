import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
	@override
	Widget build(BuildContext context){
		var card = new Card(
			child: Column(children: <Widget>[
				ListTile(
					title:Text("四川省成都市高新区",style:TextStyle(fontWeight: FontWeight.w500)),
					subtitle: Text("卡片:18780106202"),
					leading:new Icon(Icons.account_box,color:Colors.lightBlue)
				),
				new Divider(),
				ListTile(
					title:Text("北京市海淀区",style:TextStyle(fontWeight: FontWeight.w500)),
					subtitle: Text("哈哈:18780106201"),
					leading:new Icon(Icons.account_box,color:Colors.lightBlue)
				),
				new Divider(),
				ListTile(
					title:Text("云南大理",style:TextStyle(fontWeight: FontWeight.w500)),
					subtitle: Text("洱海:18780106203"),
					leading:new Icon(Icons.account_box,color:Colors.lightBlue)
				)
			],),
		);
		return MaterialApp(
			title:"suigang",
			home:Scaffold(
				appBar: new AppBar(title:new Text("demo-stack")),
				body: Center(
					child: card,
				),
			) ,
		);
	}
}