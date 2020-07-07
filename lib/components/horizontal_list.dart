import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/images/formal.png',
            image_caption: 'Formals',
          ),
          Category(
            image_location: 'assets/images/informal.png',
            image_caption: 'InFormal',
          ),
          Category(
            image_location: 'assets/images/dress.png',
            image_caption: 'Dress',
          ),
          Category(
            image_location: 'assets/images/tshirt.png',
            image_caption: 'T-Shirt',
          ),



          Category(
            image_location: 'assets/images/jeans.png',
            image_caption: 'Pants',
          ),

          Category(
            image_location: 'assets/images/shoe.png',
            image_caption: 'Shoes',
          ),

          Category(
            image_location: 'assets/images/accessories.png',
            image_caption: 'Sides',
          ),




        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 80.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 40.0,
                height: 40.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  image_caption, style: new TextStyle(fontSize: 12.0),),
              )
          ),
        ),
      ),
    );
  }
}