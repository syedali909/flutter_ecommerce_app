import 'package:flutter/material.dart';

class HorzontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/tshirt.png',
            image_caption: 'shirt',
          ),

          Category(
            image_location: 'images/cats/dress.png',
            image_caption: 'dress',
          ),

          Category(
            image_location: 'images/cats/jeans.png',
            image_caption: 'pants',
          ),

          Category(
            image_location: 'images/cats/formal.png',
            image_caption: 'formal',
          ),

          Category(
            image_location: 'images/cats/informal.png',
            image_caption: 'formal',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {

  final String image_location;
  final String image_caption;

  Category({this.image_location,this.image_caption});


  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
         child: InkWell(
           onTap: (){},
           child: Container(

             width: 90.0,
             child:  ListTile(
                 title: Image.asset(image_location, width: 40.0,
                 height: 40.0,),

               subtitle: Text(image_caption,style: new TextStyle(fontSize: 14.0),textAlign: TextAlign.center,),
             ),
           )
           ),
         );
  }

}

