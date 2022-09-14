import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme:ThemeData(
        primarySwatch: Colors.lightBlue,
        scaffoldBackgroundColor: Colors.white24

      ),
      home: Scaffold(
        appBar: AppBar(

          title: Text("Login Page",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
          centerTitle: true,

        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 20)),
              Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/2560px-Google-flutter-logo.svg.png",
                width: 100,
                height: 50,
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              SizedBox(
                width: 550,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText:  "Masukan email anda",
                      hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey),

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0)
                    )
                  ),

                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              SizedBox(
                width: 550,
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText:  "Masukan password anda",
                      hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0)
                      )
                  ),

                ),
              ),


              Padding(padding: EdgeInsets.all(15)),
              SizedBox(
                width: 550,
                height: 35,
                child: ElevatedButton(onPressed: (

                    ){}, child: Text("Login",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),)),
              ),
              Padding(padding: EdgeInsets.all(3)),

              TextButton(onPressed: (){},
                  child: Text("Forgot Password?",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15
                  ),))

            ],
          ),
        ),
      ),
    );
  }
}



