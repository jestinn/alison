import 'package:alison_test/app_ui/widget_styles.dart';
import 'package:flutter/material.dart';
import '../api_services.dart';
import '../models/alison_cart_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<AlisonCartModel>> _futureBanners;

  @override
  void initState() {
    super.initState();
    _futureBanners = ApiService().getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Image.asset("assets/images/Logo 2.jpg"),
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_sharp,
                  size: 25,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.heart_broken,
                  size: 25,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_bag_outlined, size: 25)),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/image1.png",
                      fit: BoxFit.fill,
                      filterQuality: FilterQuality.high,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 3,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black.withOpacity(.2),
                            Colors.black.withOpacity(0.6),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 50,
                      right: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.transparent),
                          side: WidgetStatePropertyAll(
                              const BorderSide(color: Colors.white)),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Shop Now",
                          style: WidgetStyles.font10SmallerText
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 30,
                      left: 50,
                      child: Text(
                        "LUI·JO",
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Our Brands",
                    style: WidgetStyles.font18HeadText,
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 115,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/images/639x837_1 1.png"),
                            fit: BoxFit.fill,
                            filterQuality: FilterQuality.high),
                      ),
                      child: Text(""),
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                ),
              ),

              SizedBox(height: 20),

              // Suggested For You Section
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Suggested For You",
                    style: WidgetStyles.font18HeadText,
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 250,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: 160,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/TWIN-CAPSULE 1.png"),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pennyblack Brown Black", // Static title
                              style: WidgetStyles.font10SmallerText,
                              textAlign:
                                  TextAlign.center, // Center text if needed
                            ),
                            Text(
                              "700.00", // Static title
                              style: WidgetStyles.font12SmallerText
                                  .copyWith(fontWeight: FontWeight.w500),
                              textAlign:
                                  TextAlign.center, // Center text if needed
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                ),
              ),
            ],
          ),
        ));
  }
}
