import 'package:flutter/material.dart';
import 'package:nimu_toys/components/select_colors.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text('Racing Car'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 30),
                Center(
                  child: Column(
                    children: const [
                      Image(
                        image: AssetImage('images/car1.png'),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Racing Car',
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'
                          's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged  unknown.',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white70,
                          ),
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: const Text(
                    'Choose Colors',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: const [
                    SelectColors(
                      color: Colors.red,
                    ),
                    SizedBox(width: 10),
                    SelectColors(
                      color: Colors.lightBlueAccent,
                    ),
                    SizedBox(width: 10),
                    SelectColors(
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    SelectColors(
                      color: Colors.greenAccent,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: const Text(
                    'Choose Quantity',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.white54,
                      ),
                      child: const Center(
                        child: Text(
                          '-',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      '2',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.white54,
                      ),
                      child: const Center(
                        child: Text(
                          '+',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: Text(r'$16.69',
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                )
              ],
            ),
          ),
        ));
  }
}
