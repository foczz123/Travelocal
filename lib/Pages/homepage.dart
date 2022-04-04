
import 'package:final_project/model/place.dart';
import 'package:final_project/Pages/detailpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'detailpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travelocal',
      home: MyHomePage(title: 'Flutter Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  List<Product> product = products;
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("TRAVELOCAL", style: GoogleFonts.fredokaOne(fontSize: 28)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {print("tapped");},
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg4.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) =>
                  buildContainer(products[index],context,index))),
    );
  }
}

Container buildContainer(Product product,BuildContext context,int index) {
  return Container(
    padding: EdgeInsets.only(left: 20, right: 20, top: 20),
    child: Card(
      color: Colors.white60,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(product: products[index]),
            ));
          },
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(product.image,
                    width: 400, height: 200, fit: BoxFit.fill),
              ),
              SizedBox(height: 20),
              ListTile(
                title: Center(
                    child: Text(
                      product.title,
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    )),
                subtitle: Center(
                    child: Text(
                      product.subtitle,
                      style: TextStyle(fontSize: 20),
                    )),
              ),
              Center(
                child: Text(
                  "-คลิกเพื่อดูรายละเอียด-",
                  style: TextStyle(
                      fontSize: 15, color: Colors.blueAccent.shade200),
                ),
              ),
              SizedBox(height: 20),
            ],
          )),
    ),
  );
}
