import 'package:flutter/material.dart';

class Dish_W extends StatefulWidget {
  const Dish_W({super.key});

  @override
  State<Dish_W> createState() => _Dish_WState();
}

class _Dish_WState extends State<Dish_W> {
  String im =
      'https://images-eu.ssl-images-amazon.com/images/G/31/img2021/Vday/bwl/English.jpg';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(7),
              width: 150,
              height: 170,
              decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      im,
                      height: 80,
                      width: 140,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Doro Wot',
                          style: TextStyle(fontSize: 15),
                        ),
                        Icon(
                          Icons.heart_broken_rounded,
                          color: Colors.red,
                          size: 19,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 3.0, left: 8.0, right: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.restaurant_menu_rounded,
                          color: Colors.yellow[600],
                          size: 10,
                        ),
                        Text(
                          "Ye Eme Majet",
                          style: TextStyle(
                            color: Colors.yellow[600],
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                "100.00",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(width: 3),
                            Text('ETB',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10,
                                    color: Colors.grey)),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.green),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: 5),
          ],
        ),
      ),
    );
  }
}
