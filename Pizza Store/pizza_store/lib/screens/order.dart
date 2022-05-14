import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pizza_store/config/app_constants.dart';
import 'package:pizza_store/repository/product_repo.dart';
import 'package:pizza_store/widgets/product_card.dart';

import '../models/product.dart';

class Order extends StatefulWidget {
  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  ProductRepo product = ProductRepo.getInstance();
  // product.getProducts();
  List<Product> products = [];
  dynamic error;
  getProductsList(List<Product> product) {
    //this funtion is passed into songsService initialize function which will call this function when we get songs through API call & pass those songs into this function as argument to this file while calling this function
    this.products =
        product; //increase scope of songs list so that we can use it outside
    setState(() {}); 
  }

  getError(dynamic error) {
    print("Error found in network call $error");
    setState(() {});
  }

  _loading() {
    return Center(child: CircularProgressIndicator());
  }

  _productList(Size deviceSize) {
    List<Widget> list = products.map((product) => card(product)).toList();
    return Container(
      height: deviceSize.height/1.4,
      child: SingleChildScrollView(
        child: Column(
          children: list,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    int cartItems = 0;
    double amount = 0;
    Size deviceSize = MediaQuery.of(context).size;
    product.getProducts(getProductsList, getError);
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(flex: 1, child: SizedBox()),
            Expanded(
              flex: 8,
              child: Container(
                padding: EdgeInsets.all(15),
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text("Order Details",
                                style: TextStyle(color: Colors.indigo.shade900, fontWeight: FontWeight.bold, fontSize: 30),)
                          ),
                          Container(
                            child: Row(
                              children: [
                                Icon(Icons.info),
                                SizedBox(width: 10),
                                Icon(Icons.menu)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            'My Cart',
                            
                            style: TextStyle(
                                color: Colors.indigo.shade900,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(Icons.shopping_basket_outlined,color: Colors.grey,),
                          )
                        ],
                      ),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                   )),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      )),
                          ),
                          
                          Container(
                            color: Color.fromARGB(255, 255, 225, 0),
                            child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('$amount Total',style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),),
                  ),
                          )
                        ],
                      ),
                    ),

                    
                    products.isEmpty ? _loading() : _productList(deviceSize)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
