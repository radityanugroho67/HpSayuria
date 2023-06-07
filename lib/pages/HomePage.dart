import 'package:flutter/material.dart';
import 'package:hp_sayuria/widgets/HomeAppBar.dart';
import 'package:hp_sayuria/widgets/HeroPict.dart';
import 'package:hp_sayuria/widgets/NewestProduct.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEF1F4),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Cari Sayur"
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.search,
                        size: 27,
                        color: Colors.black54,
                      )
                    ],
                  ),
                ),
                HeroPict(),
                SizedBox(height: 10),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Produk Terbaru",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                NewestProduct(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
