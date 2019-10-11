import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/HomePage.dart';

class ProductDetail extends StatefulWidget {
  var product_list = [
  {
  "name": "Blazer",
  "picture": "images/products/blazer1.jpeg",
  "old_price": 120,
  "price": 85,
},
{
"name": "Blazer",
"picture": "images/products/blazer2.jpeg",
"old_price": 120,
"price": 85,
},
{
"name": "Red dress",
"picture": "images/products/dress1.jpeg",
"old_price": 100,
"price": 50,
}];
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
        title: InkWell(
          onTap: ()=> {Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()))},
          child: Text("FashApp"),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: () {}),
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
                  elevation: 0.20,
                  child: new Text("Buy now"),
                ),
              ),
              IconButton(icon: Icon(Icons.add_shopping_cart,color: Colors.red ,),onPressed:() {},),
              IconButton(icon: Icon(Icons.favorite_border,color: Colors.red,),onPressed:() {},)
            ],
          ),
          Divider(),
          ListTile(
            title: new Text("Product Detail"),
            subtitle: new Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product name",style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                  child: Text(widget.prod_detail_name) ,)
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product brand",style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: Text("Brand X"),)
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product condition",style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: Text("New"),)
            ],
          ),
          Divider(),
          Padding(padding: const EdgeInsets.all(8.0),
          child: new Text("Similar Product"),),
          new Container(
            height: 300,
            child: SimlarProduct(),
          )
        ],
      ),
    );
  }
}

class SimlarProduct extends StatefulWidget {
  @override
  _SimlarProductState createState() => _SimlarProductState();
}

class _SimlarProductState extends State<SimlarProduct> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Blazer",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_Product(
              prod_name: product_list[index]['name'],
              prod_pricture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_Product extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;


  Single_Product(
      {this.prod_name, this.prod_pricture, this.prod_old_price,
        this.prod_price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          child: Material(
            child: InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute
                (builder: (context)=> ProductDetail(
                prod_detail_name : prod_name,
                prod_detail_pricture: prod_pricture,
                prod_detail_old_price : prod_old_price,
                prod_detail_price : prod_price,
              ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                        ),
                        Text("\$${prod_price}",style: TextStyle(color: Colors.red),)
                      ],
                    ),
                  ),
                  child: Image.asset(
                    prod_pricture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}






