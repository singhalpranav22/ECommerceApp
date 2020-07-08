

import 'package:flutter/material.dart';
import 'package:flutterecom/screens/productdetails.dart';
class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  var prod_list=[
    {
      "name": "Allen Solly",
      "picture": "assets/images/allen.jpg",
      "oldprice":"1499",
      "newprice":"799",
    },
    {
      "name": "Heels",
      "picture": "assets/images/heels.jpg",
      "oldprice":"2599",
      "newprice":"1599",
    },
    {
      "name": "Jeans",
      "picture": "assets/images/jeans.jpg",
      "oldprice":"1999",
      "newprice":"999",
    },
    {
      "name": "Watch",
      "picture": "assets/images/watch.jpg",
      "oldprice":"1999",
      "newprice":"999",
    },
    {
      "name": "Shirt",
      "picture": "assets/images/white.jpg",
      "oldprice": "1499",
      "newprice": "799",
    },
    {
      "name": "Sandal",
      "picture": "assets/images/sandals.jpg",
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
        tag: name,
        child: Material(
          child: InkWell(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Productdetails(
                prodname: name,
                prodimage: imageloc,
                prodoldprice: oldprice,
                prodnewprice: newprice,


              )));
            },
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(name,style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                  title: Text("₹ $newprice",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,

                  ),),
                  subtitle: Text("₹ $oldprice",style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.lineThrough,
                ),),
                  ),),


              child: Image.asset(imageloc,
                fit: BoxFit.cover,),

                ),
                
              ),

            ),
          ),
        );


  }
}
