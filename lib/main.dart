import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'firebase_ service.dart';
void main ()  async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();

}
class _MyAppState extends State<MyApp> {

  final Firebase_service _authServices = Firebase_service();
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
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
                child:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    style: TextStyle(color: Colors.black87),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius
                          .all(Radius.circular(70))),
                      hintText: "please enter your name",
                      labelText: "name",
                      labelStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(Icons.person),
                      fillColor: Colors.grey,
                      prefixIconColor: Colors.black,
                    ),

                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                  ),
                ),
                ),
                const SizedBox(width:100, height: 10),
                Container(
                   child:  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      style: TextStyle(color: Colors.black87),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius
                            .all(Radius.circular(70))),
                        hintText: "please enter your name",
                        labelText: "name",
                        labelStyle: TextStyle(color: Colors.black),
                        prefixIcon: Icon(Icons.person),
                        fillColor: Colors.grey,
                        prefixIconColor: Colors.black,
                      ),
                        textInputAction: TextInputAction.next,
                        onChanged: (value) {
                          setState(() {
                            password= value;
                          });
                        },
                      ),
                      ),


                    ),




              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton( onPressed: () async {
                  setState(() async {
                    dynamic authResult = await _authServices.signUp(email, password);
                   });
                    },
                      child: const Text("sign up ")),
                  ElevatedButton(onPressed: (){
                    setState(() {




                    });
                  }
                      , child: const Text("sin in anonymously "))

                ],
              )
            ],


          )

      ),
    );
  }


}
