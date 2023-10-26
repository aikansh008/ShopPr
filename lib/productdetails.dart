import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppr/model.dart';
import 'package:shoppr/cart.dart';
class ProductDetails extends StatefulWidget {
  final ProductModel SingleProduct;
  const ProductDetails({super.key, required this.SingleProduct});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int qty = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));

          }, icon: Icon(Icons.shopping_cart))
        ],
        backgroundColor: Color.fromARGB(255, 216, 19, 6),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8, bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.SingleProduct.image,
                height: 300,
                width: 300,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.SingleProduct.name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        widget.SingleProduct.isFavourite =
                            !widget.SingleProduct.isFavourite;
                      });
                    },
                    icon: Icon(widget.SingleProduct.isFavourite
                        ? Icons.favorite
                        : Icons.favorite_border),
                  ),
                ],
              ),
              Text(widget.SingleProduct.description),
              SizedBox(
                height: 12.00,
              ),
              Row(
                children: [
                  CupertinoButton(
                    onPressed: () {
                      if(qty >=1)
                      setState(() {
                        qty--;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 216, 19, 6),
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Text(
                    qty.toString(),
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  CupertinoButton(
                    onPressed: () {
                      setState(() {
                        qty++;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 216, 19, 6),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[ 
                SizedBox(
                  width: 120,
                  height: 33,
                  child: OutlinedButton( 
                    onPressed: (){}, child:Text("ADD TO CART",textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 245, 30, 15),
                      fontSize: 12,
                    ),),),
                ),
                SizedBox(width: 12.0,),
                SizedBox(
                  height: 32,
                  width: 120,
                  child: ElevatedButton(style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 216, 19, 6),
                  ),

                    onPressed: (){}, child: const Text("BUY", style:TextStyle(
                      color: Color.fromARGB(255, 239, 238, 237),
                    ) ,))),
                ]),
                
            ],
          )),
    );
  }
}
