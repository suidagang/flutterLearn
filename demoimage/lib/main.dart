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
						child: new Image.network(
							'https://dpic-1256841441.cos.ap-chengdu.myqcloud.com/newYearB/newYearB1.png',
							fit: BoxFit.contain,
							repeat: ImageRepeat.noRepeat,
							// color: Colors.green,
							// colorBlendMode: BlendMode.color,
						),
						width: 350,
						height:300,
						color: Colors.lightBlue,
					),
				),
			),
		);
	}
}