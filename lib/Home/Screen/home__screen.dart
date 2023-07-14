import 'package:flutter/material.dart';
import 'package:test_tikus/Home/Model/product_model.dart';
import 'package:test_tikus/Home/Service/home_service.dart';

import 'package:test_tikus/Home/Widgets/Banner_widget.dart';
import 'package:test_tikus/Home/Widgets/dish_widget.dart';
import 'package:test_tikus/Home/Widgets/category_widget.dart';
import 'package:test_tikus/Home/Widgets/nearme_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String im =
      'https://images-eu.ssl-images-amazon.com/images/G/31/img2021/Vday/bwl/English.jpg';

  List<Product>? product;
  var isLoaded = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProduct();
  }

  getProduct() async {
    product = await HomeService().GetProuct();
    print("---------===========");
    print(product);
    if (product != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 243, 243, 1),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(color: Colors.white),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Deliver To",
                    style: TextStyle(fontSize: 11, color: Colors.black),
                  ),
                  Row(
                    children: [
                      Text(
                        "12th Street, Wosen Grocery",
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                minRadius: 20,
                maxRadius: 20,
              )
            ],
          ),
        ),
      ),
      body: Visibility(
        visible: isLoaded,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Good Morning, Sol",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.greenAccent[400],
                  ),
                ),
              ),
              SizedBox(height: 5),
              Banner_W(),
              SizedBox(height: 5),
              Category_W(),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Breakfast | Lunch | Dinner",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Dish_W(),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Near Me",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 5),
              NearMe_W(),
            ],
          ),
        ),
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
