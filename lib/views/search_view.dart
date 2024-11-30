import 'package:flutter/material.dart';
import 'package:weatherapp/views/home_view.dart';
import 'package:weatherapp/widgets/search_item.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  static String id = "Search View";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, HomeView.id);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: const Text(
            "Search a City",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: const SearchItem(),
      ),
    );
  }
}
