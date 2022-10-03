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
              padding: const EdgeInsets.all(1.0),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Card(
                        margin: EdgeInsets.all(3.0),
                        elevation: 0,
                        child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(books.imageLinks),
                                fit: BoxFit.fill,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Text(books.title,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20,shadows: <Shadow>[
                                      Shadow(
                                        offset: Offset(2.0, 2.0),
                                        blurRadius: 2.0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ],
                                    ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(books.authors[0],style: TextStyle(color: Colors.white70,fontSize: 15,shadows: <Shadow>[
                                      Shadow(
                                        offset: Offset(1.0, 1.0),
                                        blurRadius: 2.0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ],
                                    ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                        )


                    ),
                  ),
                ),
              ),
            ),

          );
        },
        itemCount: booksData.length,
      ),
    );
  }
}