import 'package:final_project/model/place.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Detailpage',
      home: MyApp(
        product: [],
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.product}) : super(key: key);
  final List<Product> product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Container(
            decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg4.png"),
            fit: BoxFit.cover,
          ),
        )));
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(product.title, style: TextStyle(fontSize: 28)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg4.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
            margin: EdgeInsets.only(top: 80, bottom: 40, left: 40, right: 40),
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              border: Border.all(width: 3),
              borderRadius: BorderRadius.all(Radius.circular(24)),
              color: Colors.white60,
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child:
                      Image.asset(product.image, width: 500, fit: BoxFit.fill),
                ),
                SizedBox(height: 20),
                ListTile(
                  title: Expanded(
                      child: Center(
                        child: Text(
                    (product.title) + " จ." + (product.subtitle),
                    style: GoogleFonts.chakraPetch(fontWeight: FontWeight.bold),
                  ),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "      " + product.description,
                    style: GoogleFonts.chakraPetch(),
                  ),
                SizedBox(height: 30),
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.fredokaOne(fontSize: 16),
                    children:  <TextSpan>[
                      TextSpan(text: 'ที่อยู่: ', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: product.location),
                    ],
                  ),
                )

              ],
            )),
      ),
    );
  }
}
