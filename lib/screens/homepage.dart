import 'package:flutter/material.dart';
import 'package:nimu_toys/components/categorie_widget.dart';
import 'package:nimu_toys/components/list_view_card.dart';
import 'package:nimu_toys/constants.dart';
import 'package:nimu_toys/screens/product_details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding, vertical: defaultPadding * 3),
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Toys',
                      style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'Your Hand',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                height: 55,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            width: 0.0, color: Colors.transparent)),
                    fillColor: const Color(0xff92A7BF),
                    filled: true,
                    hintText: 'Search',
                    hintStyle: const TextStyle(
                      color: Color(0xff564343),
                    ),
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategorieWidget(
                    label: 'All',
                  ),
                  const SizedBox(width: 20),
                  CategorieWidget(
                    label: 'Cars',
                  ),
                  const SizedBox(width: 20),
                  CategorieWidget(
                    label: 'Robots',
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Container(
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Most Trending',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (c) => const ProductDetailsPage()));
                    },
                    child: const ListViewCard(
                      img: 'images/car1.png',
                      price: r"$16.69",
                      label: 'Racing Car',
                    ),
                  ),
                  const ListViewCard(
                    img: 'images/robot.png',
                    price: r"$25.59",
                    label: 'Walking Robot',
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  ListViewCard(
                    img: 'images/teddy.png',
                    price: r"$16.69",
                    label: 'Teddy Bear',
                  ),
                  ListViewCard(
                    img: 'images/captain.png',
                    price: r"$20.59",
                    label: 'Captain America',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
