import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
    final prod_detail_name,
        prod_detail_pricture,
        prod_detail_old_price,
        prod_detail_price;


    ProductDetail({this.prod_detail_name, this.prod_detail_pricture,
        this.prod_detail_old_price, this.prod_detail_price});

    @override
  _ProductDetailState createState() => _ProductDetailState();

}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text("Fashapp"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: () {}),
          IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,), onPressed: () {})
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
             height: 300,
             child: GridTile(
               child: Container(
                 color: Colors.white,
                 child: Image.asset(widget.prod_detail_pricture),
               ),
               footer: new Container(
                 color: Colors.white,
                 child: ListTile(
                   leading: new Text(widget.prod_detail_name, style:
                   TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                   title: new Row(
                     children: <Widget>[
                       Expanded(
                         child: Text("\$${widget.prod_detail_old_price}",style:
                           TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),)
                       ),
                       Expanded(
                           child: Text("\$${widget.prod_detail_old_price}", style:
                             TextStyle(color: Colors.red, fontWeight: FontWeight.w800),)
                       ),
                     ],
                   ),
                 ),
               ),
             ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Size"),
                        content: Text("Choose the size"),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          }
                          ,child: Text("close"),)
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Size"),),
                      Expanded(child: Icon(Icons.arrow_drop_down),)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Color"),),
                      Expanded(child: Icon(Icons.arrow_drop_down),)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Qty"),),
                      Expanded(child: Icon(Icons.arrow_drop_down),)
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Buy now"),
                ),
              ),
              IconButton(icon: Icon(Icons.add_shopping_cart,color: Colors.red ,),onPressed:() {},),
              IconButton(icon: Icon(Icons.favorite_border,color: Colors.red,),onPressed:() {},)
            ],
          )
        ],
      ),
    );
  }
}
