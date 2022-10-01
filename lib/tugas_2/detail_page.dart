import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tourism_place.dart';

class DetailPage extends StatefulWidget {
  final TourismPlace place;

  const DetailPage({Key? key, required this.place}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text("Detail Page")
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            height: (MediaQuery
                .of(context)
            .size
            .height)/3,
            child: ListView.builder(

              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
                itemBuilder: (context,index){
                return Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Image.network(widget.place.imageUrls[index]),
                );
                },
                itemCount: widget.place.imageUrls.length,
                ),
          ),
          Container(
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  boldText(widget.place.name),
                  SizedBox(height: 5,),
                  titleText(widget.place.location),
                  SizedBox(height: 10,),
                  mediumText(widget.place.description),
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      mediumText('Harga Tiket : ' + widget.place.ticketPrice),
                      SizedBox(width: 10,),
                      Text('|'),
                      SizedBox(width: 10,),
                      mediumText('Jam Buka : ' + widget.place.openTime),
                    ],
                  )



                ],
            )
                ,
            ),

        ],
      ),
    );
  }
Widget boldText(String text){
    return Text(
      text,
      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: Colors.blue),
    );
}
  Widget mediumText(String text){
    return Text(
      text,
      style: TextStyle(fontSize:15,color: Colors.grey),
      textAlign: TextAlign.center,

    );
  }
  Widget titleText(String text){
    return Text(
      text,
      style: TextStyle(fontSize:20),

    );
  }
  }








