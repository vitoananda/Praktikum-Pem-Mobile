import 'package:flutter/material.dart';
import 'package:praktikum_mobile_si/kuis/detail_buku.dart';
import 'books_data.dart';
import 'dart:ui';

class ListBuku extends StatefulWidget {
  const ListBuku({Key? key}) : super(key: key);

  @override
  State<ListBuku> createState() => _ListBukuState();
}

class _ListBukuState extends State<ListBuku> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Buku',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        // shrinkWrap: true,
        itemBuilder: (context,index){
          final BooksData books = booksData[index];
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailBuku(books: books)));
            },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Container(

                  child: Card(
                    elevation: 5,
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.white24
                        ),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(books.imageLinks, width: 100, height: 135,),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(books.title, textAlign:TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(books.authors[0]),
                        Text(books.publishedDate,  style: TextStyle(fontSize: 10)),
                      ],
                    ),
                  ),
                ),
              )
          );
        },
        itemCount: booksData.length,
      ),
    );
  }
}