import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/details.dart';
import 'package:food_delivery_app/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool salad = false,
      rolls = false,
      dessert = false,
      sandwich = false,
      cake = false,
      veg = false,
      pasta = false,
      noodles = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hello, Chandupa", style: AppWidget.boldTextFieldStyle()),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(height: 30.0),
            Text("Delicious Food", style: AppWidget.HeadlineTextFieldStyle()),
            Text("Discover and Get Great Food",
                style: AppWidget.LightTextFieldStyle()),
            const SizedBox(height: 20.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  showItem(),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=> const Details())
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      child: Material(
                        color: Colors.white,
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    "images/salad1.jpg",
                                    height: 150,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  )),
                              Text(
                                "Greek Salad",
                                style: AppWidget.semiBoldTextFieldStyle(),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Image.asset(
                                "images/rating_starts.png",
                                width: 100,
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Rs. 800",
                                style: AppWidget.semiBoldTextFieldStyle(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Material(
                    color: Colors.white,
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                "images/salad2.jpg",
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              )),
                          Text(
                            "Veg Salad",
                            style: AppWidget.semiBoldTextFieldStyle(),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Image.asset(
                            "images/rating_starts.png",
                            width: 100,
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "Rs. 800",
                            style: AppWidget.semiBoldTextFieldStyle(),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Material(
                    color: Colors.white,
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                "images/salad3.jpeg",
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              )),
                          Text(
                            "Clover Salad",
                            style: AppWidget.semiBoldTextFieldStyle(),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Image.asset(
                            "images/rating_starts.png",
                            width: 100,
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "Rs. 800",
                            style: AppWidget.semiBoldTextFieldStyle(),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Material(
                    color: Colors.white,
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset("images/salad1.jpg",
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              )),
                          Text("Greek Salad",
                            style: AppWidget.semiBoldTextFieldStyle(),
                          ),
                          const SizedBox(height: 5.0),
                          Image.asset("images/rating_starts.png",
                            width: 100,
                          ),
                          const SizedBox(height: 5.0),
                          Text("Rs. 800",
                            style: AppWidget.semiBoldTextFieldStyle(),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20)
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(width: 10.0),
        GestureDetector(
          onTap: () {
            salad = true;
            rolls = false;
            dessert = false;
            sandwich = false;
            cake = false;
            veg = false;
            pasta = false;
            noodles = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: salad ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "images/salad.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: salad ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {
            salad = false;
            rolls = true;
            dessert = false;
            sandwich = false;
            cake = false;
            veg = false;
            pasta = false;
            noodles = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: rolls ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "images/rolls.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: rolls ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {
            salad = false;
            rolls = false;
            dessert = true;
            sandwich = false;
            cake = false;
            veg = false;
            pasta = false;
            noodles = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: dessert ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "images/dessert.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: dessert ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {
            salad = false;
            rolls = false;
            dessert = false;
            sandwich = true;
            cake = false;
            veg = false;
            pasta = false;
            noodles = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: sandwich ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "images/sandwich.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: sandwich ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {
            salad = false;
            rolls = false;
            dessert = false;
            sandwich = false;
            cake = true;
            veg = false;
            pasta = false;
            noodles = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: cake ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "images/cake.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: cake ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {
            salad = false;
            rolls = false;
            dessert = false;
            sandwich = false;
            cake = false;
            veg = true;
            pasta = false;
            noodles = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: veg ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "images/veg.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: veg ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {
            salad = false;
            rolls = false;
            dessert = false;
            sandwich = false;
            cake = false;
            veg = false;
            pasta = true;
            noodles = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: pasta ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "images/pasta.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: pasta ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {
            salad = false;
            rolls = false;
            dessert = false;
            sandwich = false;
            cake = false;
            veg = false;
            pasta = false;
            noodles = true;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: noodles ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "images/noodles.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: noodles ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
