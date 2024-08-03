//import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/const.dart';
Widget _buildCustomChats({
  required String text,
  required IconData icon,
  int? count,
}) {
return Padding(
  padding: const EdgeInsetsDirectional.only(bottom: 20.0),

  child:
  Row(
  children: [
   
    Icon(icon, size: 30),
    SizedBox(width: 10), // Add spacing between icon and text
    Text(text, style: TextStyle(color: Colors.grey, fontSize: 35),),
    Spacer(),
    if (count != null) Text(count.toString()),
  ],
  
),
) ;
}

Widget myBody() {
  return
    Container(
    color: Colors.white24,
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          _buildCustomChats(text: "Archive " , icon:  Icons.archive),

          _buildCustomChats(text: "Groups " , icon:  Icons.group),

          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
             physics: NeverScrollableScrollPhysics(),
              itemCount: 100,
              separatorBuilder: (context, index) => SizedBox(height: 20.0), // Space between items
              itemBuilder: (context, index) {
                return const Row(

                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 35,
                      backgroundImage: NetworkImage(image), // Replace with your image URL
                    ),
                    SizedBox(width: 10), // Space between image and text
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                       children:[
                         Text(
                      "Cristiano Ronaldo",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                         Text(
                   " SUUUUUUUUUUUUU",
                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900,color: Colors.grey),

                   )

                   ]
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),

    ),
  );
}


Widget myNavig() {
  return
  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      SizedBox (
        width: 10,
      ),
    Icon(Icons.chat, size: 45, color: Color(0xFF128c7e),),
      SizedBox (
        width: 60,
      ),
      Icon(Icons.update, size: 45, color: Color(0xFF128c7e),),
      SizedBox (
        width: 60,
      ),
      Icon(Icons.commute, size: 45, color:Color(0xFF128c7e),),
      SizedBox (
        width: 60,
      ),
      Icon(Icons.call, size: 45, color: Color(0xFF128c7e),)

   ]
  );

}


Widget myFloatingActionButton() {
  return SizedBox(
    width: 70.0,
    height: 70.0,
    child: FloatingActionButton(
      onPressed: () {
      },
      backgroundColor: const Color(0xFF128c7e),
      child: const Icon(
        Icons.message,
        size: 45,
      ),
    ),
  );
}

AppBar myAppBar() {
  return AppBar(

    backgroundColor: Color(0xFF128c7e),
    title: Text(
      "WhatsApp", style: TextStyle(fontSize: 40, color: Colors.white),),
    toolbarHeight: 100.0,
    actions: [
      Icon(Icons.camera_alt, color: Colors.white, size: 35,),
      SizedBox(
        width: 15,

      ),
      Icon(Icons.search, color: Colors.white, size: 35,),
      SizedBox(
        width: 10,

      ),
      Icon(Icons.menu, color: Colors.white, size: 35,),


    ],
  );
}
