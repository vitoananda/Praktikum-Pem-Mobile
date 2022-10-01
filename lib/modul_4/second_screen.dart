import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SecondScreen extends StatelessWidget {
  final String namanya;
  const SecondScreen({Key? key, required this.namanya}) : super(key: key);
  // const SecondScreen({Key? key,  this.namanya = 'ini default'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [
            Text('halo $namanya'),
            OutlinedButton(onPressed:(){
              // Navigator.pop(context);
              _launchURL('http://fti.upnyk.ac.id/');
            },
                child: Text('Back'),)
          ],
        ),
      ),
    );
  }
  void _launchURL(_url) async{
    if(!await launch(_url)) throw 'Could Not Launch $_url';
  }
}
