import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
	@override
	Widget build(BuildContext context){
		return MaterialApp(
			title:"suigang",
			home: Scaffold(
				appBar: new AppBar(
					title:new Text("grid demo")
				),
				body: GridView(
					gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
						crossAxisCount: 3,
						mainAxisSpacing: 2.0,
						crossAxisSpacing: 2.0,
						childAspectRatio: 0.7,
					),
					children: <Widget>[
							new Image.network('http://img5.mtime.cn/mg/2018/12/04/160519.43555325_270X405X4.jpg',fit: BoxFit.cover),
							new Image.network('http://img5.mtime.cn/mg/2018/12/11/103753.22845873_270X405X4.jpg',fit: BoxFit.cover),
							new Image.network('http://img5.mtime.cn/mg/2019/01/09/145100.65255156_270X405X4.jpg',fit: BoxFit.cover),
							new Image.network('http://img5.mtime.cn/mg/2018/12/19/094155.83620362_270X405X4.jpg',fit: BoxFit.cover),
							new Image.network('http://img5.mtime.cn/mg/2019/01/02/091656.22401034_270X405X4.jpg',fit: BoxFit.cover),
							new Image.network('http://img5.mtime.cn/mg/2019/01/04/212015.35838767_270X405X4.jpg',fit: BoxFit.cover),
							new Image.network('http://img5.mtime.cn/mg/2019/01/02/092041.12588115_270X405X4.jpg',fit: BoxFit.cover),
						]
				),
			)
		);
	}
}