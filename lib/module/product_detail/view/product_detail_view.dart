import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductDetailView extends StatefulWidget {
  const ProductDetailView({Key? key}) : super(key: key);

  Widget build(context, ProductDetailController controller) {
    controller.view = this;

    rowLabel({
      required String label,
      required String value,
      bool bold = false,
    }) {
      FontWeight fontWeight = FontWeight.normal;
      if (bold) {
        fontWeight = FontWeight.bold;
      }
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: fontWeight,
                ),
              ),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: fontWeight,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        title: const Text(""),
        actions: const [],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.6),
            child: const BackButton(
              color: Colors.white,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.shopping_bag,
          size: 24.0,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(0.0),
          child: Column(children: [
            /*
              TODO: Implement this @ controller
              int currentIndex = 0;
              final CarouselController carouselController = CarouselController();
              */
            Builder(builder: (context) {
              List images = [
                "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=781&q=80",
                "https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80",
                "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=710&q=80",
              ];

              return Stack(
                children: [
                  CarouselSlider(
                    carouselController: controller.carouselController,
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height * 0.4,
                      autoPlay: true,
                      enlargeCenterPage: false,
                      viewportFraction: 1.1,
                      onPageChanged: (index, reason) {
                        controller.currentIndex = index;
                        controller.setState(() {});
                      },
                    ),
                    items: images.map((imageUrl) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              image: DecorationImage(
                                image: NetworkImage(
                                  imageUrl,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      color: Colors.black.withOpacity(0.2)),
                  Positioned(
                    bottom: 35,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: images.asMap().entries.map((entry) {
                        bool isSelected = controller.currentIndex == entry.key;
                        return GestureDetector(
                          onTap: () => controller.carouselController
                              .animateToPage(entry.key),
                          child: Container(
                            width: isSelected ? 40 : 6.0,
                            height: 6.0,
                            margin: const EdgeInsets.only(
                              right: 6.0,
                              top: 12.0,
                            ),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? Colors.white
                                  : const Color(0xff3c3e40),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              );
            }),
            Container(
              padding: const EdgeInsets.all(20.0),
              width: MediaQuery.of(context).size.width,
              transform: Matrix4.translationValues(0.0, -25, 0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Blueberry Begel",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      const CircleAvatar(
                        radius: 20.0,
                        backgroundColor: Colors.yellow,
                        child: Icon(
                          Icons.add,
                          size: 24.0,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    children: const [
                      Text(
                        "\$20 . ",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "290 cal",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                  rowLabel(
                    label: "Calories",
                    value: "280 Cal",
                    bold: true,
                  ),
                  rowLabel(
                    label: "Calories From Fat",
                    value: "10 Cal",
                  ),
                  rowLabel(
                    label: "Fat",
                    value: "2 g",
                    bold: true,
                  ),
                  rowLabel(
                    label: "Saturated Fat",
                    value: "0 g",
                  ),
                  rowLabel(
                    label: "Fat",
                    value: "2 g",
                    bold: true,
                  ),
                  rowLabel(
                    label: "Saturated Fat",
                    value: "0 g",
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  @override
  State<ProductDetailView> createState() => ProductDetailController();
}
