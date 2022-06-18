





import 'package:flutter/material.dart';


class Grid_Page extends StatelessWidget {
  const Grid_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return GridView(
      physics: NeverScrollableScrollPhysics(),
      
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: [
        Card(
          color: Colors.blue,
          margin: EdgeInsets.all(5),
          child: Stack(
            children: [
              Center(
                child: Icon(Icons.wifi,size: 50,color: Colors.white,),
              ),
              Container(
                margin: EdgeInsets.only(top: 160,left: 150),
                child: Text("Wi-Fi", 
                style: TextStyle(
                  color: Colors.white
                ),),
              )
            ],
          ),
        ),
       Card(
          color: Colors.green,
          margin: EdgeInsets.all(5),
          child: Stack(
            children: [
              Center(
                child: Icon(Icons.person,size: 50,color: Colors.white,),
              ),
              Container(
                margin: EdgeInsets.only(top: 160,left: 140),
                child: Text("Profile", 
                style: TextStyle(
                  color: Colors.white
                ),),
              )
            ],
          ),
        ),
       Card(
          color: Colors.pink.shade300,
          margin: EdgeInsets.all(5),
          child: Stack(
            children: [
              Center(
                child: Icon(Icons.connected_tv,size: 50,color: Colors.white,),
              ),
              Container(
                margin: EdgeInsets.only(top: 160,left: 115),
                child: Text("BroadCast", 
                style: TextStyle(
                  color: Colors.white
                ),),
              )
            ],
          ),
        ),
        Card(
          color: Colors.blueAccent.shade700,
          margin: EdgeInsets.all(5),
          child: Stack(
            children: [
              Center(
                child: Icon(Icons.alarm,size: 50,color: Colors.white,),
              ),
              Container(
                margin: EdgeInsets.only(top: 160,left: 140),
                child: Text("Alarm", 
                style: TextStyle(
                  color: Colors.white
                ),),
              )
            ],
          ),
        ),
       Card(
          color: Colors.brown.shade500,
          margin: EdgeInsets.all(5),
          child: Stack(
            children: [
              Center(
                child: Icon(Icons.calendar_month,size: 50,color: Colors.white,),
              ),
              Container(
                margin: EdgeInsets.only(top: 160,left: 130),
                child: Text("Calender", 
                style: TextStyle(
                  color: Colors.white
                ),),
              )
            ],
          ),
        ),
        Card(
          color: Colors.green.shade400,
          margin: EdgeInsets.all(5),
          child: Stack(
            children: [
              Center(
                child: Icon(Icons.call,size: 50,color: Colors.white,),
              ),
              Container(
                margin: EdgeInsets.only(top: 160,left: 150),
                child: Text("Calls", 
                style: TextStyle(
                  color: Colors.white
                ),),
              )
            ],
          ),
        ),
         Card(
          color: Colors.green.shade400,
          margin: EdgeInsets.all(5),
          child: Stack(
            children: [
              Center(
                child: Icon(Icons.settings,size: 50,color: Colors.white,),
              ),
              Container(
                margin: EdgeInsets.only(top: 160,left: 130),
                child: Text("Setting", 
                style: TextStyle(
                  color: Colors.white
                ),),
              )
            ],
          ),
        ),
         Card(
          color: Colors.purple.shade400,
          margin: EdgeInsets.all(5),
          child: Stack(
            children: [
              Center(
                child: Icon(Icons.warning_amber_outlined,size: 50,color: Colors.white,),
              ),
              Container(
                margin: EdgeInsets.only(top: 160,left: 150),
                child: Text("Alert", 
                style: TextStyle(
                  color: Colors.white
                ),),
              )
            ],
          ),
        ),
        
      ],
    );
  }
}