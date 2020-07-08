import 'package:flutter/material.dart';

class Productdetails extends StatefulWidget {

  String prodname;
  String prodimage;
  String prodoldprice;
  String prodnewprice;

  Productdetails({this.prodname,this.prodimage,this.prodoldprice,this.prodnewprice});
  @override
  _ProductdetailsState createState() => _ProductdetailsState();
}

class _ProductdetailsState extends State<Productdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text(

          "FashApp",
        ),
        actions: [
          IconButton(

            icon: Icon(Icons.search,color: Colors.white,),
            onPressed: null,

          ),
          IconButton(

            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: null,
            color: Colors.white,
          )
        ],
      ),
      body: ListView(
        children: <Widget>[

         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             height: 300,
             child: GridTile(
               child: Hero(
                 tag: widget.prodname,
                 child: Container(

                   child: Image.asset(widget.prodimage,
                   fit: BoxFit.cover,),
                 ),
               ),
             footer: Container(
               color: Colors.white70,
               child: ListTile(
                  leading: Text(
                    widget.prodname,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                 title: Row(
                   children: <Widget>[

                     Expanded(
                      child: Text("₹ ${widget.prodoldprice}",style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.lineThrough,
                      ),),


                     ),
                     Expanded(
                       child: Text("₹ ${widget.prodnewprice}",style: TextStyle(
                         color: Colors.red,
                         fontWeight: FontWeight.bold,

                       ),),


                     ),
                   ],
                 ),
               ),
             ),
             ),
           ),
         ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed:(){
                    showDialog(context: context, builder: (context){
                      return AlertDialog(
                    title: Text("Size"),
                        content: Text("Select the Size") ,
                        actions: <Widget>[

                          MaterialButton(
                            onPressed: (){
                              Navigator.pop(context);

                            },
                            child: Text("Close"),
                          )
                        ],
                      );

                    });
                  },
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "Size"
                        ),
                      ),
                        Expanded(child: Icon(Icons.keyboard_arrow_down)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed:(){
                    showDialog(context: context, builder: (context){
                      return AlertDialog(
                        title: Text("Colour"),
                        content: Text("Select the Colour") ,
                        actions: <Widget>[

                          MaterialButton(
                            onPressed: (){
                              Navigator.pop(context);

                            },
                            child: Text("Close"),
                          )
                        ],
                      );

                    });
                  },
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                            "Colour",
                          style: TextStyle(

                          ),
                        ),
                      ),
                      Expanded(child: Icon(Icons.keyboard_arrow_down)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed:(){
                    showDialog(context: context, builder: (context){
                      return AlertDialog(
                        title: Text("Quantity"),
                        content: Text("Select the Quantity") ,
                        actions: <Widget>[

                          MaterialButton(
                            onPressed: (){
                              Navigator.pop(context);

                            },
                            child: Text("Close"),
                          )
                        ],
                      );

                    });
                  },
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                            "Qty"
                        ),
                      ),
                      Expanded(child: Icon(Icons.keyboard_arrow_down)),
                    ],
                  ),
                ),
              )
            ],
          ),

          Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  elevation: 0.4,
                  onPressed: (){},
                  color: Colors.red,

                  child: Text("Buy Now",
                  style: TextStyle
                    (
                    color: Colors.white,
                  )),
                ),
              ),
              IconButton(icon : Icon(Icons.add_shopping_cart,color: Colors.red),onPressed: null),
              IconButton(icon : Icon(Icons.favorite_border,color: Colors.red),onPressed: null),

            ],
          ),

          Divider(),
          ListTile(
            title: Text("Product Details"),
            subtitle: Text("If you are looking for a pair that will be ideal for both casual and party wear, these ballerinas might do the trick. With a unique design, it will appeal to your refined taste in fashion while bowling you over. Team it with a bodycon dress for a party look and with a pair of jeans and a top for a more casual approach."),
          ),
          Divider(),
            Row(
              children: <Widget>[
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("Product Name:"),
               ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("T-Shirt",style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                ),


              ],
            ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Product Brand:"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("GUCCI",style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
              ),


            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Product Condition:"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("New",style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
              ),


            ],
          ),
          Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Similar Products:", style: TextStyle(
            fontWeight: FontWeight.bold,
          ),),
        ),
          Container(
              height: 250.0,
              child: SimilarProducts()),
        ],
      ),
    );
  }
}

class SimilarProducts extends StatefulWidget {

  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
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
  @override
  Widget build(BuildContext context) {
    return GridView.builder(itemCount: prod_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context,int index){

          return SimSingleProd(
            name: prod_list[index]['name'],
            imageloc: prod_list[index]['picture'],
            oldprice: prod_list[index]['oldprice'],
            newprice: prod_list[index]['newprice'],
          );
        });
  }
}

class SimSingleProd extends StatelessWidget {
  final name;
  final oldprice;
  final newprice;
  final imageloc;
  SimSingleProd({this.name,this.imageloc,this.oldprice,this.newprice});
  @override
  Widget build(BuildContext context) {
    return Card(
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
    );


  }
}
