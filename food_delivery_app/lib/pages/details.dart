import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/widget/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.black,
                )),
            ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.asset(
                "images/salad1.jpg",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Greek Salad",
                      style: AppWidget.boldTextFieldStyle(),
                    ),
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    if (a>1) {
                      --a;
                    }
                    setState(() {
                      
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                    child: const Icon(Icons.remove, color: Colors.white,),
                  ),
                ),
                const SizedBox(width: 20.0,),
                Text(a.toString(), style: AppWidget.semiBoldTextFieldStyle(),),
                const SizedBox(width: 20.0,),
                GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {
                      
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                    child: const Icon(Icons.add, color: Colors.white,),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20,),
            Text(
              "Greek salad or horiatiki salad is a salad in Greek cuisine generally made with pieces of tomatoes, cucumbers, onion, feta cheese, and olives and dressed with salt, Greek oregano, lemon juice and olive oil. Common additions include green bell pepper or caper berries.",
              maxLines: 5,
              style: AppWidget.LightTextFieldStyle(),
            ),
            const SizedBox(height: 30.0,),
            Row(
              children: [
                Text("Delivery Time", style: AppWidget.semiBoldTextFieldStyle(),),
                const SizedBox(width: 25.0,),
                const Icon(Icons.alarm, color: Colors.black54,),
                const SizedBox(width: 5.0,),
                Text("30 min", style: AppWidget.semiBoldTextFieldStyle(),)
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total Price", style: AppWidget.semiBoldTextFieldStyle(),),
                      Text("\$28", style: AppWidget.HeadlineTextFieldStyle(),)
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text("Add to cart", style: TextStyle(color: Colors.white, fontSize: 18.0, fontFamily: "Poppins"),),
                        const SizedBox(width: 30.0),
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.grey, borderRadius: BorderRadius.circular(8)
                          ),
                          child: const Icon(Icons.shopping_cart_outlined, color: Colors.white,),
                        ),
                        const SizedBox(width: 10.0,)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
