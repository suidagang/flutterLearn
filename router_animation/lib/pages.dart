import 'package:flutter/material.dart';
import 'custome_router.dart';
class FirstPage extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: Colors.pink,
			appBar: AppBar(
				title: Text("FirstPage",style: TextStyle(fontSize: 36.0)),
				elevation: 1.0,
			),
			body: Center(
				child: MaterialButton(
					child: Icon(
						Icons.navigate_next,
						color:Colors.white,
						size:64.0
					),
					onPressed: (){
						Navigator.of(context).push(CustomeRouter(SecondPage()));
					},
				),
			),
		);
	}
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
	return Scaffold(
		backgroundColor: Colors.purple,
		appBar: AppBar(
			title: Text("secondPage",style:TextStyle(fontSize: 36.0)),
			backgroundColor: Colors.purple,
			leading: Container(),
			elevation: 1.0,
		),
		body: Center(
			child: MaterialButton(
				child: Icon(
					Icons.navigate_before,
					color:Colors.white,
					size:64.0
				),
				onPressed: (){
					Navigator.of(context).pop();
				},
			),
		),
	);
  }
}