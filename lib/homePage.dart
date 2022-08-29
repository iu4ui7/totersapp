import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  " توصيل الئ ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  Text(
                    "بغداد الحارثيه",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0.3,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Row(
            children: [
              Icon(
                Icons.tune_sharp,
                color: Colors.grey,
              ),
              SizedBox(
                width: 3,
              ),
              Icon(
                Icons.add_alert_outlined,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "سجل الدخول باستخدام تطبيق توترزواستمتع بمزايا حصرية",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  Icon(Icons.arrow_circle_right_outlined,
                      color: Colors.grey),
                ],
              ),
              FlutterCarousel(
                options: CarouselOptions(
                  height: 250,
                  showIndicator: true,
                  slideIndicator: CircularSlideIndicator(),
                ),
                items: [1, 2, 3,].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage(
                              "https://images.totersapp.com/banners/image_ar/4495/GdbwIuahIVVrli21.jpeg"),
                              fit: BoxFit.cover),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              SizedBox(height: 10,),
              Container(
                height: 220,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        imge(
                            "https://quizizz.com/media/resource/gs/quizizz-media/quizzes/62b808e8-6dbf-482d-864e-6a0e0c0591cf?w=90&h=90",
                            "توترز فريش"),
                        imge(
                            "https://toters-assets.s3.eu-west-1.amazonaws.com/icons/home-page-services/groceries20.png",
                            "البقالة"),
                        imge(
                            "https://toters-assets.s3.eu-west-1.amazonaws.com/icons/home-page-services/food20.png",
                            "مطاعم"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        imge(
                            "https://toters-assets.s3.eu-west-1.amazonaws.com/icons/home-page-services/add_funds8.png",
                            "اضف رصيد"),
                        imge(
                            "https://toters-assets.s3.eu-west-1.amazonaws.com/icons/home-page-services/butler20.png",
                            "المندوب"),
                        imge(
                            "https://toters-assets.s3.eu-west-1.amazonaws.com/icons/home-page-services/retail8.png",
                            "متجر"),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 10,
                color: Colors.grey.shade300,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Icon(Icons.arrow_back_ios,color: Colors.grey,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10,top: 10),
                        child: Text("خصومات اسبوعية",style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5,right: 10),
                        child: Text("احصل علئ خصم 50% علئ مطاعم هذا الاسبوع",style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 15,),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container imge(String imge, String namee) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 10,
            )
          ]),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              imge,
              height: 50,
              width: 50,
            ),
            Text(
              namee,
              style: TextStyle(
                  fontFamily: 'ElMessiri',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
