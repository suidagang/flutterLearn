import 'package:flutter/material.dart';

void main() =>runApp(MyApp());
//页面入口
class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
			return MaterialApp(
				title: "demo001",
				home: Scaffold(
					appBar: AppBar(title: Text("demo 001"),),
					body: Container(
						child:Column(
							children: <Widget>[
								TopImg(),
								TitlePage(),
								IconText(),
								BottomText()
							],
						)
					),
				),
			);
	}
}
//图片组件
class TopImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
	return Container(
	  child:new Image.asset('image/001.jpg', fit: BoxFit.cover)
	);
  }
}

//标题布局
class TitlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
	return Container(
		padding: const EdgeInsets.all(32.0),
		child: Row(
			children: <Widget>[
				Expanded(
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: <Widget>[
							Container(
								padding: const EdgeInsets.only(bottom: 8.0),
								child: Text("Oeschinen Lake Campground",style:TextStyle(fontWeight:FontWeight.bold)),
							),
							Text('Kandersteg, Switzerland',style:TextStyle(color:Colors.grey[500]))
						],
					),
				),
				Icon(
					Icons.star,
					color:Colors.red[500]
				),
				Text("41")
			],
		),
	);
  }
}

//图标文字组件
class IconText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
		Column buildButtonColumn(IconData icon,String lable){
			Color color = Theme.of(context).primaryColor;
			return Column(
				mainAxisSize: MainAxisSize.min,
				mainAxisAlignment: MainAxisAlignment.center,
				children: <Widget>[
					Icon(icon,color: color),
					Container(
						margin: const EdgeInsets.only(top:8.0),
						child: Text(
							lable,
							style: TextStyle(
								fontSize: 12.0,
								fontWeight: FontWeight.w400,
								color: color
							),
						),
					)
				],
			);	
		}
		return Container(
			child: Row(
				mainAxisAlignment: MainAxisAlignment.spaceEvenly,
				children: <Widget>[
					buildButtonColumn(Icons.call, 'CALL'),
					buildButtonColumn(Icons.near_me, 'ROUTE'),
					buildButtonColumn(Icons.share, 'SHARE'),
				],
			),
		);
  }
}

//文字组件
class BottomText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
	return Container(
		padding: const EdgeInsets.all(32.0),
		child: Text(
			"Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. ",
			softWrap: true,
		),
	);
  }
}