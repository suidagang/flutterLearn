import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
	@override
	Widget build(BuildContext context){
		return new MaterialApp(
			title: '眭刚',
			home:Scaffold(
				body:Center(
					child:Container(
						child: new Text("demo",style:TextStyle(fontSize: 40.0)),
						alignment: Alignment.topLeft,
						width: 500.0,
						height: 400.0,
						// color: Colors.lightBlue,
						padding: const EdgeInsets.fromLTRB(10.0,50.0,0.0,0.0),
						margin: const EdgeInsets.fromLTRB(10.0,10.0,10.0,10.0),
						decoration: new BoxDecoration(
							// color: Colors.grey,
							gradient: const LinearGradient(
								colors: [Colors.lightBlue,Colors.pink,Colors.purple]
							),
							border: Border.all(width: 4.0,color: Colors.red)
						),
					),
				),
			),
		);
	}
}