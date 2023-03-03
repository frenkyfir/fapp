import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/product_detail_view.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductDetailController extends State<ProductDetailView>
    implements MvcController {
  static late ProductDetailController instance;
  late ProductDetailView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();

  updateIndex(newIndex) {
    currentIndex = newIndex;
    setState(() {});
  }
}
