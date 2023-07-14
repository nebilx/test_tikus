import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class NearMe_W extends StatefulWidget {
  const NearMe_W({super.key});

  @override
  State<NearMe_W> createState() => _NearMe_WState();
}

class _NearMe_WState extends State<NearMe_W> {
  String im =
      'https://images-eu.ssl-images-amazon.com/images/G/31/img2021/Vday/bwl/English.jpg';
  double value = 3.5;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: MediaQuery.of(context).size.height * 0.7,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        separatorBuilder: (context, index) =>
            Padding(padding: EdgeInsets.all(10)),
        itemCount: 10,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: ((context, index) {
          return Container(
              height: MediaQuery.of(context).size.height * 0.14,
              width: MediaQuery.of(context).size.width * 0.05,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          im,
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.14,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "MaMa Kitchen",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SmoothStarRating(
                                      allowHalfRating: false,
                                      onRatingChanged: (v) {
                                        value = v;
                                        setState(() {});
                                      },
                                      starCount: 5,
                                      rating: value,
                                      size: 15.0,
                                      filledIconData: Icons.star,
                                      halfFilledIconData: Icons.star,
                                      color: Colors.yellow,
                                      borderColor: Colors.yellow,
                                      spacing: 0.0,
                                    ),
                                    Text(
                                      "4.0",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(2),
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.02,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color.fromARGB(
                                              255, 225, 255, 240)),
                                      child: Text(
                                        'Open',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 9,
                                            color:
                                                Color.fromARGB(255, 0, 255, 8)),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.pin_drop_outlined,
                                      size: 15,
                                    ),
                                    Text(
                                      "Sealite Mihret, Gurd Shola",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 9,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, bottom: 50),
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(2),
                              width: MediaQuery.of(context).size.width * 0.1,
                              height: MediaQuery.of(context).size.height * 0.02,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 255, 211, 154)),
                              child: Text(
                                '33 Mins',
                                style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.orange),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ));
        }),
      ),
    );
  }
}
