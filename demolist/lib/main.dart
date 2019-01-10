import 'package:flutter/material.dart';
void main() => runApp(MyApp(
	items:new List<String>.generate(1000, (i) => "item $i")
));

class MyApp extends StatelessWidget{
	final List<String> items;
	MyApp({Key key,@required this.items}):super(key:key);
	@override
	Widget build(BuildContext context){
		return MaterialApp(
			title: "suigang",
			home:Scaffold(
				appBar: new AppBar(
					title:new Text("demoList")
				),
				body: new ListView.builder(
					itemCount: items.length,
					itemBuilder: (context,index){
						return new ListTile(
							title:new Text('${items[index]}')
						);
					},
				),
				// body:Center(
				// 	child: Container(
				// 		height: 200.0,
				// 		// child:new ListView(
				// 		// 	children: <Widget>[
				// 		// 		new ListTile(
				// 		// 			leading: new Icon(Icons.ac_unit),
				// 		// 			title:new Text("雪花")
				// 		// 		),
				// 		// 		new Image.network('https://dpic-1256841441.cos.ap-chengdu.myqcloud.com/newYearB/newYearB4.png')
				// 		// 	],
				// 		// ),
				// 		child:MyList(),
				// 	),
				// )
				
			),
		);
	}
}

class MyList extends StatelessWidget{
	@override
	Widget build(BuildContext context){
		return ListView(
			scrollDirection: Axis.horizontal,
			children: <Widget>[
				new Container(
					width: 180.0,
					color: Colors.purple,
				),
				new Container(
					width: 180.0,
					color: Colors.orange,
				),
				new Container(
					width: 180.0,
					color: Colors.pink,
				),new Container(
					width: 180.0,
					color: Colors.greenAccent,
				)
			],
		);
	}
}