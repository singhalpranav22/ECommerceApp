import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  var prod_list=[
    {
      "name": "Allen Solly",
      "picture": "assets/images/Recent/allen.jpg",
      "oldprice":"1499",
      "newprice":"799",
    },
    {
      "name": "Heels",
      "picture": "assets/images/Recent/heels.jpg",
      "oldprice":"2599",
      "newprice":"1599",
    },
    {
      "name": "Jeans",
      "picture": "assets/images/Recent/jeans.jpg",
      "oldprice":"1999",
      "newprice":"999",
    },
    {
      "name": "Watch",
      "picture": "assets/images/Recent/watch.jpg",
      "oldprice":"4599",
      "newprice":"3999",
    },
    {
      "name": "Shirt",
      "picture": "assets/images/Recent/white.jpg",
      "oldprice": "1499",
      "newprice": "799",
    },
    {
      "name": "Sandal",
      "picture": "assets/images/Recent/sandals.jpg",
      "oldprice":"2999",
      "newprice":"2499",
    }
  ];
  Widget build(BuildContext context) {
    return GridView.builder(itemCount: prod_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context,int index){

      return SingleProd(
        name: prod_list[index]['name'],
        imageloc: prod_list[index]['picture'],
        oldprice: prod_list[index]['oldprice'],
        newprice: prod_list[index]['newprice'],
      );
        });
  }
}

class SingleProd extends StatelessWidget {
  final name;
  final oldprice;
  final newprice;
  final imageloc;
  SingleProd({this.name,this.imageloc,this.oldprice,this.newprice});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: 'prod_name',
        child: Material(
          child: InkWell(
            onTap: null,
            child: GridTile(
              footer: Container(
                color: Colors.white30,
                child: ListTile(
                  title: Text(name,style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                  

                ),
                
              ),
              child: Image.asset(imageloc,
              fit: BoxFit.cover,),
            ),
          ),
        ),
      ),
    );
  }
}
