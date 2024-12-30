import 'package:flutter/material.dart';
import 'package:selaty/core/navigator/navigator.dart';
import 'package:selaty/widgets/custom_button/custom_button.dart';
import 'package:selaty/widgets/custom_text/custom_text.dart';

import '../../core/app_colors/app_colors.dart';
import '../../widgets/custom_app_bar/custom_app_bar.dart';
import 'card_message.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  // قائمة بالعناصر
  List<Map<String, dynamic>> cartItems = [
    {"name": "كمثرى امريكي", "price": 35.00, "quantity": 1, "weight": "1 kg"},
    {"name": "تفاح احمر", "price": 40.00, "quantity": 2, "weight": "2 kg"},
    {"name": "موز", "price": 25.00, "quantity": 1, "weight": "1 kg"},
    {"name": "تفاح اخضر", "price": 40.00, "quantity": 2, "weight": "2 kg"},
    {"name": "كمثرى مصرى", "price": 20.00, "quantity": 1, "weight": "1 kg"},
  ];
  List<Map<String, dynamic>> cartItems2 = [
    {"name": "كمثرى امريكي", "price": 35.00, "quantity": 1, "weight": "1 kg"},
    {"name": "تفاح احمر", "price": 40.00, "quantity": 2, "weight": "2 kg"},
    {"name": "موز", "price": 25.00, "quantity": 1, "weight": "1 kg"},
    {"name": "تفاح اخضر", "price": 40.00, "quantity": 2, "weight": "2 kg"},
    {"name": "كمثرى مصرى", "price": 20.00, "quantity": 1, "weight": "1 kg"},
  ];

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      backgroundColor: homeBg,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: CustomAppBar(
            bgColor: homeBg,
            title: 'عربة التسوق',
            fontColor: greyColor,
            titleCenter: true,
            showToolBar: true,
            actions: [
              Container(
                height: 40,
                width: 40,
                padding: EdgeInsets.all(1),
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xffE2E2E2),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: InkWell(
                    child: Icon(Icons.arrow_forward_ios_outlined),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: isPortrait
          ? Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (BuildContext context, int index) {
                        final item = cartItems[index];
                        return Dismissible(
                          key: Key(item["name"]),
                          direction: DismissDirection.endToStart,
                          background: Container(
                            alignment: Alignment.centerRight,
                            color: Colors.red,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Icon(Icons.delete, color: Colors.white),
                          ),
                          onDismissed: (direction) {
                            setState(() {
                              cartItems.removeAt(index);
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            width: double.infinity,
                            height: 100,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          cartItems[index]["quantity"]++;
                                        });
                                      },
                                      child: Icon(Icons.add, size: 20),
                                    ),
                                    Text('${item["quantity"]}'),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (cartItems[index]["quantity"] > 1)
                                            cartItems[index]["quantity"]--;
                                        });
                                      },
                                      child: Icon(Icons.remove, size: 20),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 80),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      title:
                                          '${item["price"]}\$x${item["quantity"]} ',
                                      fontColor: green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    CustomText(
                                      title: item["name"],
                                      fontWeight: FontWeight.bold,
                                    ),
                                    CustomText(
                                      title: item["weight"],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(height: 10);
                      },
                      itemCount: cartItems.length,
                    ),
                  ),
                  Container(
                    height: 220,
                    padding: const EdgeInsets.only(top: 15),
                    color: homeBg,
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: white,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                    title: 'البنود',
                                    fontSize: 16,
                                    fontColor: greyColor,
                                  ),
                                  Container(
                                    width: 70,
                                    child: CustomText(
                                      title: '${cartItems.length}',
                                      fontSize: 16,
                                      fontColor: greyColor,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                    title: 'المجموع الفرعي',
                                    fontSize: 16,
                                    fontColor: greyColor,
                                  ),
                                  Container(
                                    width: 70,
                                    child: CustomText(
                                      title:
                                          '${cartItems.fold(0, (total, item) => total + (item["price"] * item["quantity"] as num).toInt())}\$',
                                      fontSize: 16,
                                      fontColor: greyColor,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                    title: 'رسوم التوصيل',
                                    fontSize: 16,
                                    fontColor: greyColor,
                                  ),
                                  Container(
                                    width: 70,
                                    child: CustomText(
                                      title: 'Free',
                                      fontSize: 16,
                                      fontColor: greyColor,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                    title: 'الإجمالي',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  CustomText(
                                    title:
                                        '${cartItems.fold(0, (total, item) => total + (item["price"] * item["quantity"] as num).toInt())}\$',
                                    fontSize: 16,
                                    fontColor: greyColor,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          height: 50,
                          child: CustomButtom(
                              name: 'الدفع',
                              onPressed: () {
                                NavigatorHandler.push(CardMessage());
                              }),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          : Container(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: ListView.separated(
                        padding: const EdgeInsets.only(right: 16, bottom: 10),
                        itemBuilder: (BuildContext context, int index) {
                          final item = cartItems2[index];
                          return Dismissible(
                            key: Key(item["name"]),
                            direction: DismissDirection.endToStart,
                            background: Container(
                              alignment: Alignment.centerRight,
                              color: Colors.red,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Icon(Icons.delete, color: Colors.white),
                            ),
                            onDismissed: (direction) {
                              setState(() {
                                cartItems2.removeAt(index);
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              height: 100,
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            cartItems2[index]["quantity"]++;
                                          });
                                        },
                                        child: Icon(Icons.add, size: 20),
                                      ),
                                      Text('${item["quantity"]}'),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (cartItems2[index]["quantity"] >
                                                1)
                                              cartItems2[index]["quantity"]--;
                                          });
                                        },
                                        child: Icon(Icons.remove, size: 20),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 110),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        title:
                                            '${item["price"]}\$x${item["quantity"]} ',
                                        fontSize: 16,
                                        fontColor: green,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      CustomText(
                                        title: item["name"],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                      CustomText(
                                        title: item["weight"],
                                        fontSize: 16,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(height: 10);
                        },
                        itemCount: cartItems2.length,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      width: 300,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                title: 'البنود',
                                fontSize: 20,
                                fontColor: greyColor,
                              ),
                              Container(
                                width: 70,
                                child: CustomText(
                                  title: '4',
                                  fontSize: 20,
                                  fontColor: greyColor,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                title: 'المجموع الفرعي',
                                fontSize: 20,
                                fontColor: greyColor,
                              ),
                              Container(
                                width: 70,
                                child: CustomText(
                                  title: '100.00\$',
                                  fontSize: 18,
                                  fontColor: greyColor,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                title: 'رسوم التوصيل',
                                fontSize: 20,
                                fontColor: greyColor,
                              ),
                              Container(
                                width: 70,
                                child: CustomText(
                                  title: 'Free',
                                  fontSize: 20,
                                  fontColor: greyColor,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                title: 'الاجمالى',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              CustomText(
                                title: '100.00 \$',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 50,
                            child: CustomButtom(
                              name: 'الدفع',
                              onPressed: () {
                                NavigatorHandler.push(CardMessage());
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
