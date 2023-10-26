import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shoppr/cart.dart';
import 'package:shoppr/mens.dart';
import 'package:shoppr/model.dart';
import 'package:shoppr/myproduct.dart';
import 'package:shoppr/productdetails.dart';
import 'package:shoppr/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int myindex = 0;

  @override
  Widget build(BuildContext context) {
    List imageList = [
      {"id": 1, "image_path": 'assets/images/image2.jpg'},
      {"id": 2, "image_path": 'assets/images/appliances2.webp'},
      {"id": 3, "image_path": 'assets/images/clothes.avif'},
      {"id": 4, "image_path": 'assets/images/image4.jpg'},
      {"id": 5, "image_path": 'assets/images/toys2.webp'},
      {"id": 6, "image_path": 'assets/images/cosmetics3.avif'},
      {"id": 7, "image_path": 'assets/images/furniture.jpg'},
    ];
    final CarouselController carouselController = CarouselController();
    int currentIndex = 0;
    return Scaffold(
      drawer: Container(
        width: 325,
        child: Drawer(),
      ),
      backgroundColor: Color.fromARGB(255, 242, 242, 243),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Builder(
                    builder: (context) => Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: IconButton(
                        icon: Icon(Icons.dashboard),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text("Ghaziabad,India"),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/bell.png"),
                    radius: 20,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(252, 235, 231, 230),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 4,
                                )
                              ]),
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              prefixIcon: Icon(Icons.search),
                              hintText: "search product",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 214, 84, 75),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 4,
                                )
                              ]),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.sort_by_alpha))),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: double.infinity,
              child: Stack(
                children: [
                  InkWell(
                      onTap: () {
                        print(currentIndex);
                      },
                      child: CarouselSlider(
                          items: imageList
                              .map((item) => Image.asset(
                                    item['image_path'],
                                    width: double.infinity,
                                  ))
                              .toList(),
                          carouselController: carouselController,
                          options: CarouselOptions(
                              scrollPhysics: const BouncingScrollPhysics(),
                              autoPlay: true,
                              aspectRatio: 2,
                              viewportFraction: 1,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  currentIndex = index;
                                });
                              }))),
                  Positioned(
                    bottom: 8,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imageList.asMap().entries.map((entry) {
                        print(entry);
                        print(entry.key);
                        return GestureDetector(
                          onTap: () =>
                              carouselController.animateToPage(entry.key),
                          child: Container(
                            width: currentIndex == entry.key ? 10 : 7,
                            height: 7.0,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 3.0,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: currentIndex == entry.key
                                    ? Colors.red
                                    : Colors.teal),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Categories",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 20),
                    child: GestureDetector(
                      onTap: () {
Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>CartScreen ()),
  );
                      },
                      child: Container(
                        child: Card(
                          elevation: 13.0,
                          shadowColor: const Color.fromARGB(255, 77, 72, 72),
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.asset("assets/images/mens2.png"),
                              ),
                              Text(
                                "Men's Wear",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: Card(
                          elevation: 13.0,
                          shadowColor: const Color.fromARGB(255, 77, 72, 72),
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(children: [
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset("assets/images/his.png"),
                            ),
                            Text(
                              "Women's Wear",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ]),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 20),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: Card(
                          elevation: 13.0,
                          shadowColor: const Color.fromARGB(255, 77, 72, 72),
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.asset("assets/images/kids.jpeg"),
                              ),
                              Text(
                                "Kid's Wear",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: Card(
                          elevation: 13.0,
                          shadowColor: const Color.fromARGB(255, 77, 72, 72),
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child:
                                    Image.asset("assets/images/mobiles.webp"),
                              ),
                              Text(
                                "Phones",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: Card(
                          elevation: 13.0,
                          shadowColor: const Color.fromARGB(255, 77, 72, 72),
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child:
                                    Image.asset("assets/images/cosfashion.jpg"),
                              ),
                              Text(
                                "cosmetics",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: Card(
                          elevation: 13.0,
                          shadowColor: const Color.fromARGB(255, 77, 72, 72),
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.asset("assets/images/toys3.jpg"),
                              ),
                              Text(
                                "Toys",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: Card(
                          elevation: 13.0,
                          shadowColor: const Color.fromARGB(255, 77, 72, 72),
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child:
                                    Image.asset("assets/images/furfashion.jpg"),
                              ),
                              Text(
                                "Furniture",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: GestureDetector(
                      child: Container(
                        child: Card(
                          elevation: 13.0,
                          shadowColor: const Color.fromARGB(255, 77, 72, 72),
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child:
                                    Image.asset("assets/images/appliances.jpg"),
                              ),
                              Text(
                                "Appliances",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 12.0, right: 12.0),
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: bestProducts.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: 0.56,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    ProductModel singleProduct = bestProducts[index];
                    return Container(
                      decoration: BoxDecoration(
                        color:
                            Color.fromARGB(255, 236, 56, 56).withOpacity(0.6),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Image.asset(
                              singleProduct.image,
                              height: 100,
                              width: 100,
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              singleProduct.name,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Text("Price:${singleProduct.price}"),
                          SizedBox(
                            height: 6.0,
                          ),
                          OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductDetails(
                                        SingleProduct: singleProduct)),
                              );
                            },
                            child: Text(
                              "Buy",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 216, 19, 6),
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 236, 233, 233),
                                side: const BorderSide(
                                  color: Color.fromARGB(255, 215, 5, 5),
                                )),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          OutlinedButton(
                            onPressed: () {
                            },
                            child: Text(
                              "Cart",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 216, 11, 11),
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: const BorderSide(
                                  color: Colors.red,
                                )),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 216, 19, 6),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          onTap: (index) {
            setState(() {
              myindex = index;
            });
          },
          currentIndex: myindex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}

List<ProductModel> bestProducts = [
  ProductModel(
    image: "assets/new images/M14.webp",
    id: "1",
    name: "Samsung Galaxy M14 5G",
    price: "Rs.11,990",
    description:
        "Samsung Galaxy M14 5G (Berry Blue,6GB,128GB)|50MP Triple Cam|Segment's Only 6000 mAh 5G SP|5nm Processor|2 Gen. OS Upgrade & 4 Year Security Update|12GB RAM with RAM Plus|Android 13|Without Charger",
    isFavourite: false,
  ),
  ProductModel(
    image: "assets/new images/nord (1).png",
    id: "2",
    name: "One Plus Nord ",
    price: "33,999",
    description: "OnePlus Nord 3 5G (Misty Green, 8GB RAM, 128GB Storage)",
    isFavourite: false,
  ),
  ProductModel(
    image: "assets/new images/z flip 4.jpg",
    id: "3",
    name: "Samsung  Z Flip 4 5G",
    price: "84,999",
    description: "Samsung Galaxy Z Flip4 5G (Graphite, 8GB RAM, 256GB Storage)",
    isFavourite: false,
  ),
  ProductModel(
    image: "assets/new images/iphone.jpg",
    id: "4",
    name: "iphone 15 Pro Max",
    price: "1,59,000",
    description: "Apple iPhone 15 Pro Max (256 GB) - Blue Titanium",
    isFavourite: false,
  ),
  ProductModel(
    image: "assets/new images/lg tv.webp",
    id: "5",
    name: "LG LED TV",
    price: "51,999",
    description:
        "LG 139 cm (55 inch) 4K UHD Smart LED TV WebOS Active HDR 55UR8040PSB_Black,2023",
    isFavourite: false,
  ),
  ProductModel(
    image: "assets/new images/samsung qled.jpg",
    id: "6",
    name: "Samsung QLED TV",
    price: "59,990",
    description:
        "Samsung 138 cm (55 inches) 4K Ultra HD Smart QLED TV QA55QE1CAKLXL Titan Gray",
    isFavourite: false,
  ),
  ProductModel(
    image: "assets/new images/AC.jpg",
    id: "7",
    name: "VIRAAT",
    price: "42,999",
    description:
        "LG 1.5 Ton 5 Star VIRAAT, DUAL Inverter Split AC (Copper, Super Convertible 5-in-1 Cooling, HD Filter with Anti-Virus Protection, 2023 Model, RS-Q19BNZE, White",
    isFavourite: false,
  ),
  ProductModel(
    image: "assets/new images/MIXER.jpg",
    id: "8",
    name: "Prestige Mixer",
    price: "1,899",
    description:
        "Prestige 500 Watts Orion Mixer Grinder with 3 Stainless Steel Jars |2 years warranty| Red & White",
    isFavourite: false,
  ),
  ProductModel(
    image: "assets/new images/washingmachine.webp",
    id: "9",
    name: "Panasonic Automata",
    price: "13,999",
    description:
        "Panasonic 6 Kg 5 Star Fully-Automatic Top Load Washing Machine ( NA-F60LF1HRB, Grey, Durable Metal Body, 8 Wash Program, Aquabeat wash technology, One touch smart wash, 2022 model)",
    isFavourite: false,
  ),
  ProductModel(
    image: "assets/new images/shirt.jpg",
    id: "10",
    name: "Allen Solly Men Shirt",
    price: "799",
    description: "material is cotton, Fit : Ultra Slim Fit, Ocassion : Formal ",
    isFavourite: false,
  ),
  ProductModel(
    image: "assets/new images/mens jeans.jpg",
    id: "11",
    name: "Levi's Men Jeans",
    price: "1,350",
    description:
        "Material TypeCotton ,LengthStandard Length, Style Boyfriend, Closure TypeButton,Type CasualCare, Instructions Machine Wash , Country of Origin  India",
    isFavourite: false,
  ),
  ProductModel(
    image: "assets/new images/saree.jpg",
    id: "12",
    name: "MANOHARI ",
    price: "1,849",
    description:
        "Material Composition :Banarasi Silk, Weave Type : Jacquard , Length : 6 yards , Occasion TypeFestival Party, WeddingIncluded Components : With blouse piece, Care Instructions : Dry Clean Only",
    isFavourite: false,
  ),
  ProductModel(
    image: "assets/new images/kids.jpg",
    id: "13",
    name: "GURUJI PLUS Baby ",
    price: "999",
    description:
        "Material TypeCotton, Fit TypeRegular : Fit, StyleShirt : Closure , TypeElastic , Care Instructions : Hand Wash Only, Age Range Description : Adult, Country of Origin : India",
    isFavourite: false,
  ),
  ProductModel(
    image: "assets/new images/lipstick.jpg",
    id: "14",
    name: "My Glamm",
    price: "1,599",
    description:
        "MyGlamm Manish Malhotra Powder Matte Lipstick - Promiscuous Pink - 4gm | Coral Pink Shade | Long Lasting, Prevents from Sun Damage | Enriched With Antioxidant-Rich Maracuja Oil | Exclusively by MyGlamm",
    isFavourite: false,
  ),
  ProductModel(
    image: "assets/new images/extoys.jpg",
    id: "15",
    name: "Carobot",
    price: "499",
    description:
        "Cable World Plastic Battery Operated Converting Car to Robot, Robot to Car Automatically,Robot Toy, with Light and Sound for Kids Indoor and Outdoor 3 Year, Pack of 1",
    isFavourite: false,
  ),
  ProductModel(
    image: "assets/new images/sofa.webp",
    id: "16",
    name: "Interio",
    price: "16,998",
    description:
        "GODREJ INTERIO Candour 3-Seater Fabric Sofa (1-Year Warranty, Solid Wood, Dark Grey)",
    isFavourite: false,
  ),
];