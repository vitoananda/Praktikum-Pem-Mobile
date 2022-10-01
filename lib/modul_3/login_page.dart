import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
   LoginPage({Key? key}) : super(key: key);

   String username = "";
   String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Login Page'),
            centerTitle: true,
          ),
          body: Column(
            children: [
              _usernameField(),
              _passwordField(),
              _loginButton(context),
            ],
          )
    );

  }

  Widget _usernameField(){
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child : TextFormField(
        onChanged: (value){
          username = value;
        },
        enabled: true,
        decoration: const InputDecoration(
          hintText: 'Username',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius:
              BorderRadius.all(Radius.circular(8.0)),
           borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      )
    );
  }

  Widget _passwordField(){
    return Container(
        padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
        ),
        child : TextFormField(
          onChanged: (value){
            password = value;
          },
          enabled: true,
          obscureText: true,
          decoration: const InputDecoration(
            hintText: 'Password',
            contentPadding: const EdgeInsets.all(8.0),
            border: OutlineInputBorder(
              borderRadius:
              BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Colors.blue),
            ),
          ),
        )
    );
  }

  Widget _loginButton(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      //width: MediaQuery.of(context).size.width,
      child: ElevatedButton(

        onPressed: (){
          String text="";
          if(username== "FlutterMobile" && password=="flutter123"){
            text = "Login Success";
          }else{
            text = "Login Failed";
          }

          SnackBar snackBar = SnackBar(content: Text(text),);

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text('Login'),
      ),
    );
  }

}



