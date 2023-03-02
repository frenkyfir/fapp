import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/dashboard_view.dart';

class DashboardController extends State<DashboardView>
    implements MvcController {
  static late DashboardController instance;
  late DashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  updateIndex(newIndex) {
    selectedCategoryIndex = newIndex;
    setState(() {});
  }

  int selectedCategoryIndex = 0;
  List<Map> categories = [
    {
      "label": "All",
    },
    {
      "label": "Pizza",
      "icon": "https://cdn-icons-png.flaticon.com/512/3595/3595455.png",
    },
    {
      "label": "Burger",
      "icon": "https://cdn-icons-png.flaticon.com/512/3075/3075977.png",
    },
    {
      "label": "Drink",
      "icon": "https://cdn-icons-png.flaticon.com/512/2738/2738730.png",
    },
    {
      "label": "Burger",
      "icon": "https://cdn-icons-png.flaticon.com/512/859/859293.png",
    }
  ];
}
