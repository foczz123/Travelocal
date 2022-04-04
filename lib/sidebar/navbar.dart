import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "Supakorn Yookack",
              style: GoogleFonts.chakraPetch(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text("yookack_s@silpakorn.edu",
                style: GoogleFonts.chakraPetch(fontWeight: FontWeight.bold)),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/images/avatar.jpg",
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/dark-wallpaper.jpg"),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              "มหาวิทยาลัยศิลปากร",
              style: GoogleFonts.fredokaOne(),
            ),
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text(
              "การพัฒนาโปรแกรมบนอุปกรณ์เคลื่อนที่",
              style: GoogleFonts.fredokaOne(),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              "อาจารย์พร้อมเลิศ หล่อวิจิตร",
              style: GoogleFonts.fredokaOne(),
            ),
          ),
        ],
      ),
    );
  }
}
