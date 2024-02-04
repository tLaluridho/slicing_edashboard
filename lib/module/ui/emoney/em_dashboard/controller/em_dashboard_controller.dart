import 'package:flutter/material.dart';
import 'package:slicing_ui/core.dart';
import '../view/em_dashboard_view.dart';

class EmDashboardController extends State<EmDashboardView> {
  static late EmDashboardController instance;
  late EmDashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }

  List menus = [
    {
      "title": "Add Money",
      "icon": "https://cdn-icons-png.flaticon.com/128/11816/11816725.png",
      "description": "Top-up some money into your accound"
    },
    {
      "title": "Send Pay",
      "icon": "https://cdn-icons-png.flaticon.com/128/2534/2534217.png",
      "description": "Pay, send or top-up money to other bank or e-wallet"
    },
    {
      "title": "Request Money",
      "icon": "https://cdn-icons-png.flaticon.com/128/11894/11894926.png",
      "description": "Reuest money from your friends or family"
    },
    {
      "title": "Pay Bills",
      "icon": "https://cdn-icons-png.flaticon.com/128/2037/2037840.png",
      "description": "Pay electricity, water, internet or other bills"
    }
  ];

  List contacts = [
    {
      "name": "Ridho",
      "photo": "https://i.ibb.co/PGv8ZzG/me.jpg",
    },
    {
      "name": "Fadil",
      "photo": "https://i.ibb.co/PGv8ZzG/me.jpg",
    },
    {
      "name": "Meirda",
      "photo": "https://i.ibb.co/PGv8ZzG/me.jpg",
    },
    {
      "name": "Dion",
      "photo": "https://i.ibb.co/PGv8ZzG/me.jpg",
    },
    {
      "name": "Ryan",
      "photo": "https://i.ibb.co/PGv8ZzG/me.jpg",
    },
    {
      "name": "Azuar",
      "photo": "https://i.ibb.co/PGv8ZzG/me.jpg",
    }
  ];
}
