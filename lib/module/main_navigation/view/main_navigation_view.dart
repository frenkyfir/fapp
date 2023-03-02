import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';
import '../controller/main_navigation_controller.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  Widget build(context, MainNavigationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
                child: Row(
                  children: const [
                    ImageIcon(
                      NetworkImage(
                        "https://i.ibb.co/rsz6JWq/751463.png",
                      ),
                      size: 24.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "New York, USA",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 270.0,
                    ),
                    ImageIcon(
                      NetworkImage(
                        "https://i.ibb.co/rsz6JWq/751463.png",
                      ),
                      size: 24.0,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: const [
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Find the best place",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 6.0,
                  horizontal: 12.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  border: Border.all(
                    width: 1.0,
                    color: Colors.grey[400]!,
                  ),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Icon(Icons.search),
                    ),
                    Expanded(
                      child: TextFormField(
                        initialValue: null,
                        decoration: const InputDecoration.collapsed(
                          filled: true,
                          fillColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          hintText: "Search",
                        ),
                        onFieldSubmitted: (value) {},
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: const [
                  Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              SizedBox(
                height: 30.0,
                child: Row(
                  children: [
                    Container(
                      width: 80.0,
                      height: 25.0,
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius:
                              BorderRadius.all(Radius.circular(16.0))),
                      child: const ImageIcon(
                        NetworkImage(
                          "https://i.ibb.co/rsz6JWq/751463.png",
                        ),
                        size: 0.0,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      width: 100.0,
                      height: 20.0,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      width: 100.0,
                      height: 20.0,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<MainNavigationView> createState() => MainNavigationController();
}
