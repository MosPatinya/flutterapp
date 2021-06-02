import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
         scrollDirection: Axis.vertical,
         child: Column(
           children: [
             searchBox(),
             
           ],
           ),
  ),
  );
}
Widget searchBox(){
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
        SizedBox(height: 30,),
        Container(
          height:50,
          padding: EdgeInsets.only(left:100,right:3,top:3,bottom:3),
          decoration:BoxDecoration (
          borderRadius:BorderRadius.circular(10),
          color: Colors.grey
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black),
                    hintText: "ค้นหาร้านค้าและสถานที่",border: InputBorder.none
                  ),
                ),
              ),
              MaterialButton(
                onPressed: (){},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                minWidth: 50,
                elevation: 0,
                color: Colors.grey,
                child: Icon(Icons.search,color:Colors.black ,),
              ),
            ],
          ),
        ),
      ],
    ),
    );
}
}