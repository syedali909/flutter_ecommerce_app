import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Cart"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search,color: Colors.white,),onPressed: (){},)
          ],
        ),
        bottomNavigationBar: new Container(
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Expanded(
                child: ListTile(
                  title: Text("Total"),
                  subtitle: new Text("\$230"),
                )),
              Expanded(
                  child: MaterialButton(
                    onPressed: (){},
                    child: Text("Check Out",style: TextStyle(color: Colors.white),),
                    color: Colors.red,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
