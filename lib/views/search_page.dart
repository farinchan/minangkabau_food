import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minangkabau_food/models/food.dart';
import 'package:minangkabau_food/style/color.dart';
import 'package:minangkabau_food/views/detail_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchController = TextEditingController();
  String? resultSearch;
  final food = foodList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: mainColor),
            child: Container(
              margin: EdgeInsets.only(top: 200),
              decoration: BoxDecoration(
                color: secondColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
              ),
            ),
          ),
          SafeArea(
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
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: searchController,
                        onChanged: (result) {
                          setState(() {
                            resultSearch = result;
                            print(resultSearch);
                          });
                        },
                        decoration: InputDecoration(
                            fillColor: Color(0xffF1F0F5),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(),
                            ),
                            hintText: 'Search',
                            suffixIcon: Icon(
                              CupertinoIcons.search,
                              color: mainColor,
                            )),
                      ),
                      SizedBox(height: 20),
                      for (var i = 0; i < food.length; i++)
                        food[i].title!.toLowerCase() ==
                                resultSearch?.toLowerCase()
                            ? ItemSearch(index: i)
                            : ItemSearch(index: i)
                               
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ItemSearch extends StatelessWidget {
  ItemSearch({Key? key, required this.index}) : super(key: key);

  int index;
  List<Food> food = foodList;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(food: food[index]))),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xffF1F0F5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(7, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  food[index].title!,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                Text(
                  "Rp. ${food[index].prices}",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: mainColor),
                ),
              ],
            ),
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(food[index].image!), fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
