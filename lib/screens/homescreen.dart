import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutterecom/components/horizontal_list.dart';
import 'package:flutterecom/components/products.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

     Widget image_carousel=Container(
       height: 200,

       child: Carousel(

         boxFit: BoxFit.cover,
         images: [
           Image.asset("assets/images/car1.jpg"),
           Image.asset("assets/images/car2.jpeg"),
           Image.asset("assets/images/car3.jpg"),
           Image.asset("assets/images/car4.jpeg"),

         ],

         animationCurve: Curves.fastLinearToSlowEaseIn,
         dotSize: 4.0,
         indicatorBgPadding: 4.0,
       ),
     );
    return Scaffold(

      appBar: AppBar(
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
      drawer: Drawer(
        child: ListView(
          children: [

            UserAccountsDrawerHeader(
                accountName: Text("Pranav Singhal"),accountEmail:Text("abc@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                )
            ),

            InkWell(
              onTap: null,
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
            ),
            InkWell(
              onTap: null,
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("My Account"),
              ),
            ),
            InkWell(
              onTap: null,
              child: ListTile(
                leading: Icon(Icons.shopping_basket),
                title: Text("My Orders"),
              ),
            ),
            InkWell(
              onTap: null,
              child: ListTile(
                leading: Icon(Icons.category),
                title: Text("Categories"),
              ),
            ),
            InkWell(
              onTap: null,
              child: ListTile(
                leading: Icon(Icons.favorite),
                title: Text("Favourites"),
              ),
            ),
            Divider(),
            InkWell(
              onTap: null,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
            ),
            InkWell(
              onTap: null,
              child: ListTile(
                leading: Icon(Icons.info),
                title: Text("About"),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          image_carousel,
          Padding(
            padding: EdgeInsets.all(8.0),
          ),
          Center(
            child: Text(
              "  Categories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          HorizontalList(),
          Padding(
            padding: EdgeInsets.all(8.0),
          ),
          Center(
            child: Text(
              "  Recent Items",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
          ),
          Container(
      height: 250.0,
              child: Products()),

        ],
      ),
    );
  }
}
