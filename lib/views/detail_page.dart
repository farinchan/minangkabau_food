import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minangkabau_food/models/food.dart';
import 'package:minangkabau_food/style/color.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key? key, required this.food}) : super(key: key);
  final Food food;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int buyFood = 0;

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
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      CupertinoIcons.back,
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
              margin: EdgeInsets.all(20),
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.food.image!),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.food.title!,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  Container(
                    height: 58,
                    width: 119,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.horizontal(left: Radius.circular(20)),
                        color: mainColor),
                    child: Center(
                      child: Text(
                        "Rp. ${widget.food.prices!}",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                widget.food.about!,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.only(right: 20, top: 5),
                height: 44,
                width: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromARGB(255, 233, 233, 233),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: (() {
                          setState(() {
                            buyFood == 0 ? buyFood = 0 : buyFood--;
                          });
                        }),
                        child: Image.asset("assets/icons/minus.png")),
                    Text(buyFood.toString()),
                    InkWell(
                        onTap: () => setState(() {
                              buyFood++;
                            }),
                        child: Image.asset("assets/icons/plus.png"))
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Pesan Sekarang'),
                style: ElevatedButton.styleFrom(
                    primary: mainColor,
                    fixedSize: const Size(100, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
