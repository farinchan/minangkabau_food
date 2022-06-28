import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minangkabau_food/models/food.dart';
import 'package:minangkabau_food/style/color.dart';
import 'package:minangkabau_food/views/detail_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final food = foodList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.bars,
                      color: Colors.black.withOpacity(0.6),
                      size: 40,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.cart,
                      color: Colors.black.withOpacity(0.6),
                      size: 28,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 20, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "minangkabau Food",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      Icon(CupertinoIcons.placemark, size: 18),
                      Text(
                        "Bukittinggi",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Text(
                    "Lapau Nasi Minangkabau",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Wrap(
                children: food
                    .map(
                      (e) => InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage(food: e,))),
                        child: Container(
                          height: 200,
                          width: 152,
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Color(0xFFDADADA),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(width: 2, color: Color(0xFFC5C5C5)),
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                margin: EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(e.image!),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                margin: EdgeInsets.only(top: 10, left: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      e.title!,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: textColor,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Rp. ${e.prices}",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: mainColor),
                                        ),
                                        Padding(
                                            padding:
                                                const EdgeInsets.only(right: 8),
                                            child: Image.asset(
                                              "assets/icons/add.png",
                                            ))
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
