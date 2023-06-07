import 'package:flutter/material.dart';

class NewestProduct extends StatelessWidget {
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Container(
          height: 700, // Set a fixed height for the container
          child: GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              // Single Item
              for (int i = 0; i < 6; i++)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2, vertical: 1),
                  child: Container(
                    width: 170,
                    height: 300,
                    decoration: BoxDecoration(
                        color: Color(0xFFEEF1F4),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              alignment: Alignment.center,
                              child: Image.asset(
                                "assets/images/produk1.png",
                                height: 120,
                              )),
                          Text(
                            "Rp 2.200",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Daun Bawang",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 12),
                          Row(
                            children: [
                              Text(
                                "Stock: 100",
                                style: TextStyle(fontSize: 14),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
