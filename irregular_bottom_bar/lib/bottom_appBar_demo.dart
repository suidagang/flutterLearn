import 'package:flutter/material.dart';
import 'each_view.dart';
class BottomAppBarDemo extends StatefulWidget {
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
	List<Widget> _eachView;
	int _index = 0;
	@override
	void initState() {
		_eachView = List();
		_eachView..add(EachView("home"))..add(EachView("page"));
		super.initState();
	}
    @override
    Widget build(BuildContext context) {
		return Scaffold(
			body: _eachView[_index],
			floatingActionButton: FloatingActionButton(
				onPressed: (){
					Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
						return EachView("New Page");
					}))
				},
				tooltip: "测试哈哈",
				child: Icon(
					Icons.add,
					color:Colors.white
				),
			),
			floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
			bottomNavigationBar: BottomAppBar(
				color: Colors.lightBlue,
				shape: CircularNotchedRectangle(),
				child: Row(
					mainAxisSize: MainAxisSize.max,
					mainAxisAlignment: MainAxisAlignment.spaceAround,
					children: <Widget>[
						IconButton(
							icon: Icon(Icons.home),
							color: Colors.white,
							onPressed: (){
								setState(() {
									_index = 0;						  
								});
							},
						),
						IconButton(
							icon: Icon(Icons.satellite),
							color: Colors.white,
							onPressed: (){
								setState(() {
									_index = 1;						  
								});
							},
						),
					],
				),
			),
		);
	}
}