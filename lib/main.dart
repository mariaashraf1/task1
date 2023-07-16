import 'package:flutter/material.dart';




void main() => runApp(const MyApp());
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

          appBar: AppBar(
            title: const Text("sign in page"),
                centerTitle: true,

          ),

          body:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterLogo(size:200),
              Container(
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius
                          .all(Radius.circular(70))),
                      hintText: "please enter your name",
                      labelText: "name",
                      labelStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(Icons.person),
                      fillColor: Colors.grey,
                      prefixIconColor: Colors.black,
                    ),


                  ),
                ),
                ),
                const SizedBox(width:100, height: 10),
                Container(
                   child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      style: TextStyle(color: Colors.black87),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius
                            .all(Radius.circular(70))),
                        hintText: "please enter your name",
                        labelText: "name",
                        labelStyle: TextStyle(color: Colors.black),
                        prefixIcon: Icon(Icons.person),
                        fillColor: Colors.grey,
                        prefixIconColor: Colors.black,
                      ),


                    ),
                  )

              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {


                    });
                  }
                      , child: Text("sign in ")),
                  ElevatedButton(onPressed: (){
                    setState(() {


                    });
                  }
                      , child: Text("log in"))

                ],
              )
            ],


          )

      ),
    );
  }


}
