




import 'package:assignment7/Screens/BottomNavBar/components/tabs/chat_page.dart';
import 'package:assignment7/Screens/BottomNavBar/components/tabs/feed_page.dart';
import 'package:assignment7/Screens/BottomNavBar/components/tabs/home_page.dart';
import 'package:assignment7/Screens/TabBar/components/background.dart';
import 'package:assignment7/Screens/TabBar/components/gridview.dart';
import 'package:assignment7/Screens/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        toolbarHeight: 80,
        backgroundColor: const Color.fromRGBO(24, 26, 32, 1),
        title: Stack(children: [
        Positioned(
          top: 5,
          child:IconButton(onPressed: (){
            Navigator.push(context, 
                MaterialPageRoute(builder: (context) => WelcomeScreen()));
          }, icon: Icon(Icons.arrow_back_ios,size: 15,)) ),
        Padding(
          padding: const EdgeInsets.only(top: 18),
          child: Column(
            children: [
              Text("TabBar and GridView"),
                 Column(
                  
                  children: [
                     Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: const TabBar(
                        
                                 tabs: [
                                Tab(text: "GridView",),
                                Tab(text: "Home",),
                                Tab(text: "Feed",),
                                Tab(text: "Chat",),
                                
                                       ],
                                labelStyle: TextStyle(fontSize:15 )),
                    ),
                  ],
                )
            ],
          ),
        ),
      ] ) ),
        
       body: Background(
          child: SingleChildScrollView(
          child: Container(
                height: size.height,
                   child: TabBarView(
                   
                    children: [
                    Grid_Page(),
                    HomePage(),
                    FeedPage(),
                    ChatPage(),
                    
                   ])
                   
                   )
             ),
              
          
        )
      ),
    );
  }
}

