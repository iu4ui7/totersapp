import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class dna extends StatefulWidget {
  const dna({Key? key}) : super(key: key);

  @override
  State<dna> createState() => _dnaState();
}

class _dnaState extends State<dna> {
  int number = 1;
  int price = 10000;
  int y = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: body(),
    );
  }

  Column body() {
    return Column(
      children: [
        Image.asset(
          "images/photo2.jpg",
          height: MediaQuery.of(context).size.width * 0.50,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "برجرات",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "جيد جدا",
                      style: TextStyle(fontSize: 15, color: Colors.black87),
                    ),
                    Icon(
                      Icons.mood_outlined,
                      color: Colors.grey,
                      size: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "سعر توصيل : 1,500",
                      style: TextStyle(fontSize: 15, color: Colors.black87),
                    ),
                    Icon(
                      Icons.sports_motorsports_outlined,
                      color: Colors.grey,
                      size: 25,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(": الحد الادنئ للطلب "),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Text("5000 د.ع"),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.add_card,
                      size: 20,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 65,
                    ),
                    Text("المنصور"),
                    Icon(
                      Icons.language_outlined,
                      size: 20,
                      color: Colors.grey,
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "وقت التوصيل المتوقع نصف ساعه الئ",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text("ساعه", style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.access_time_sharp,
                      size: 20,
                      color: Colors.grey,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "بيتزا فصول الاربعه",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Container(
                  height: 65,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.keyboard_arrow_up,
                              size: 35,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "اضافات",
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 20),
                                ),
                                Text(
                                  "اختياري",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "تعليمات خاصه",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Container(
                  height: 56,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ReadMoreText(
                          'اذا كان لديك اي ملاحظات تخص  الطلب يرجئ الكتابه اهنا وسنقوم بالمساعده شكرا اذا كان لديك اي ملاحظات تخص  الطلب ',
                          trimLines: 2,
                          colorClickableText: Colors.pink,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: 'اقرئ المزيد',
                          trimExpandedText: 'Show less',
                          moreStyle: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey.withOpacity(0.4),
                        child: GestureDetector(
                          child: Icon(
                            Icons.add,
                            size: 40,
                            color: Colors.black,
                          ),
                          onTap: () {
                            setState(() {
                              number = number + 1;
                              y++;
                              price = price + 10000;
                            });
                          },
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 50,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Text(
                            "$number",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    (number > 0)
                        ? CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.grey.withOpacity(0.4),
                            child: GestureDetector(
                              child: Icon(
                                Icons.remove,
                                size: 40,
                                color: Colors.black,
                              ),
                              onTap: () {
                                setState(() {
                                  number = number - 1;
                                  y--;
                                  price = price - 10000;
                                });
                              },
                            ))
                        : CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.grey.withOpacity(0.4),
                            child: Icon(
                              Icons.remove,
                              size: 40,
                              color: Colors.grey,
                            ),
                          )
                  ],
                ),
                Center(
                  child: Text(
                    "$price د . ع ",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "اضافه الئ السله",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
