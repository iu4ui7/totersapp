import 'package:flutter/material.dart';

class ardio extends StatefulWidget {
  const ardio({Key? key}) : super(key: key);

  @override
  State<ardio> createState() => _ardioState();
}

class _ardioState extends State<ardio> {
  String val = '';
  bool valll = true;
  bool vallll = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.3,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.share,color: Colors.black,),
                SizedBox(width: 5,),
                SizedBox(width: 5,),
                Icon(Icons.favorite_border,color: Colors.black,),
              ],
            ),
          ),
        ],
        leading: Icon(Icons.cancel_rounded,color: Colors.black,),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
          child: Image.asset("images/photo1.jpg",height: 205,),
          ),
   Padding(
     padding: const EdgeInsets.all(8.0),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Text("datakfkd"),
         Text("data"),
         Text("data"),
       ],
     ),
   ),
          Container(
            height: 10,
            color: Colors.grey.shade300,
          ),


          RadioListTile(value: "value",
              activeColor: Colors.purple,
              groupValue: val, 
              title: Text("data"),
              onChanged: (vall){
        setState(() {
          val = "$vall";
          print("hello");
        });
          }),   RadioListTile(value: "valuee",
              activeColor: Colors.purple,
              groupValue: val,
              title: Text("data"),
              onChanged: (vall){
        setState(() {
          val = "$vall";
          print("hello");
        });
          }),   RadioListTile(value: "valueee",

              activeColor: Colors.purple,
              groupValue: val,
              title: Text("data"),
              onChanged: (vall){
        setState(() {
          val = "$vall";
          print("hello");
        });
          }),
          CheckboxListTile(value: valll,
              title: Text("data"),

              onChanged: (valll){
            setState(() {
              vallll = valll!;
            });
              }),
          CheckboxListTile(value: valll,
              title: Text("data"),

              onChanged: (valll){
                setState(() {
                  vallll = valll!;
                });
              }),
          
        ],
      ),
    );
  }
}
