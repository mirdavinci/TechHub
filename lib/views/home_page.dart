import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:techub/controllers/hover_event_controller.dart';
import 'package:techub/utils/constants.dart';
import 'package:techub/widgets/custom_hover_widget.dart';
import 'package:techub/widgets/custom_row.dart';
import 'package:techub/widgets/custom_slider.dart';
import 'package:techub/widgets/mini_slider.dart';

import '../controllers/slider_controller.dart';

class HomePage extends GetView {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SliderController());
    final hoverController = Get.put(HoverEventController());

    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 20),
                child: const Text("Istanbul / Sariyer")),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(left: 20),
              child: const Text(
                "LUXURIOUS DUPLEX FOR SALE CLOSE TO FLORYA JUNCTION FROM SELÇUK KAYA",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  // color: Colors.blueGrey,
                  height: 550,
                  width: 700,
                  margin: const EdgeInsets.only(left: 20),
                  child: Stack(
                    children: [
                      Container(
                        // color: Colors.orange,
                        child: CarouselSlider(
                          carouselController: controller.mainCarouselController,
                          items: [
                            customSlide(
                              "assets/pics/pic1.jpg",
                            ),
                            customSlide(
                              "assets/pics/pic2.jpg",
                            ),
                            customSlide(
                              "assets/pics/pic3.jpg",
                            ),
                            customSlide(
                              "assets/pics/pic4.jpg",
                            ),
                          ],
                          options: CarouselOptions(
                            autoPlay: false,
                            scrollPhysics: const NeverScrollableScrollPhysics(),
                            viewportFraction: 1,
                            enlargeCenterPage: true,
                            enlargeStrategy: CenterPageEnlargeStrategy.scale,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 100, left: 100),
                        child: Center(
                          child: Row(
                            children: [
                              Container(
                                child: IconButton(
                                    onPressed: () {
                                      controller.miniCarouselController
                                          .previousPage();
                                      controller.mainCarouselController
                                          .previousPage();
                                    },
                                    icon: const Icon(Icons.arrow_back)),
                                margin:
                                    const EdgeInsets.only(top: 250, right: 50),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 250),
                                child: CarouselSlider(
                                  carouselController:
                                      controller.miniCarouselController,
                                  items: [
                                    miniSlider("", "assets/pics/pic1.jpg", ""),
                                    miniSlider("", "assets/pics/pic2.jpg", ""),
                                    miniSlider("", "assets/pics/pic3.jpg", ""),
                                    miniSlider("", "assets/pics/pic4.jpg", ""),
                                  ],
                                  options: CarouselOptions(
                                      viewportFraction: 0.5,
                                      scrollDirection: Axis.horizontal),
                                ),
                                // color: Colors.lightGreen,
                              ),
                              Container(
                                child: IconButton(
                                  onPressed: () {
                                    controller.miniCarouselController
                                        .nextPage();
                                    controller.mainCarouselController
                                        .nextPage();
                                  },
                                  icon: const Icon(Icons.arrow_forward),
                                ),
                                margin:
                                    const EdgeInsets.only(top: 250, left: 50),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 100, left: 200),
                  child: Column(
                    children: [
                      Container(
                        color: const Color(0xffF5F5F5),
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/pics/bill.jpg",
                              height: 200,
                              width: 200,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: const [
                                Text("Sales Agent"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Can Gürses",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text("+90 535 480 80 80"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("+90 212 255 33 55"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("sales@49realty.net"),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        color: const Color(0xffE8E8E8),
                        height: 300,
                        width: 370,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              margin: const EdgeInsets.only(left: 20),
                              child: const Text(
                                "Let us call you",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Color(0xff17479D)),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: const Text(
                                "Full Name",
                                style: TextStyle(color: Color(0xff767676)),
                              ),
                              alignment: Alignment.topLeft,
                              margin: const EdgeInsets.only(left: 20),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 20, right: 20, top: 10),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  filled: true,
                                  fillColor: const Color(0xffF4F4F4),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.5)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: const BorderSide(
                                        color: Color(0xffF4F4F4)),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: const Text(
                                "Type your mobile number",
                                style: TextStyle(color: Color(0xff767676)),
                              ),
                              alignment: Alignment.topLeft,
                              margin: const EdgeInsets.only(left: 20),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 20, right: 20, top: 10),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "+90 ( )  ____ ____ ____",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  filled: true,
                                  fillColor: const Color(0xffF4F4F4),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.5)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: const BorderSide(
                                        color: Color(0xffF4F4F4)),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                "Send Call Request",
                                style: const TextStyle(color: Colors.white),
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xff17479D)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    side: const BorderSide(
                                      color: const Color(0xff17479D),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 50, bottom: 10),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 7,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Property Price",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 80,
                    ),
                    child: const Text(
                      "1,100,000₺",
                      style: TextStyle(decoration: TextDecoration.lineThrough),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 80, bottom: 50),
                    child: const Text(
                      "1,100,000₺",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.only(left: 45),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 7,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Property Details",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                Container(
                  height: 150,
                  width: 150,
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                      color: Color(0xffF5F5F5),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      SvgPicture.asset("assets/icons/apartment.svg"),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Structure Type",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff767676)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Apartment",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 150,
                  width: 150,
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                      color: Color(0xffF5F5F5),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      SvgPicture.asset("assets/icons/floor.svg"),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Floor Number",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff767676)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "2",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 150,
                  width: 150,
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                      color: Color(0xffF5F5F5),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      SvgPicture.asset("assets/icons/bedroom.svg"),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Number Of Rooms",
                        style:
                            TextStyle(fontSize: 10, color: Color(0xff767676)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "4+1",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xffF5F5F5),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(23),
                  height: 150,
                  width: 150,
                  child: Column(
                    children: [
                      SvgPicture.asset("assets/icons/bathroom.svg"),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Number Of Bathrooms",
                        style:
                            TextStyle(fontSize: 10, color: Color(0xff767676)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "2",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                      color: Color(0xffF5F5F5),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      SvgPicture.asset("assets/icons/size.svg"),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Net Size Of Flat",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff767676)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "360sq",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 390,
                  margin: const EdgeInsets.only(left: 40, right: 300),
                  alignment: Alignment.bottomLeft,
                  decoration: const BoxDecoration(
                      color: Color(0xffF5F5F5),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      CustomRow(title: "m² (Brüt)", state: "186"),
                      CustomRow(
                          title: "Age of Building Between", state: "5-10"),
                      CustomRow(title: "Number of Floors", state: "16"),
                      CustomRow(
                          title: " Within a Building Complex ", state: "Yes"),
                      CustomRow(title: "Dues", state: "350"),
                      CustomRow(title: "Balcony", state: "Available"),
                      CustomRow(title: "Furnished", state: "No"),
                      CustomRow(title: "Heating", state: "Floor Heating"),
                      CustomRow(title: "Number of Parkings", state: "0"),
                    ],
                  ),
                ),
                const CustomOnHoverContainer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
