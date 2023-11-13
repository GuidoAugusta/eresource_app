import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Text(
            'Profil',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 26,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 40,
                child: Image.asset(
                  'assets/foto_profile.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 32,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Muhammad Guido Augusta',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('22.11.4562')
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Text(
            'Email',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          TextField(
            readOnly: true,
            enabled: false,
            maxLines: 2,
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email,
                  size: 30,
                  color: Colors.black,
                ),
                labelText: "muhammadguido29@gmail.com",
                labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 14),
                contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            'Password',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          TextField(
            readOnly: true,
            enabled: false,
            maxLines: 2,
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  size: 30,
                  color: Colors.black,
                ),
                labelText: "************",
                labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 14),
                contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            'Tahun Angkatan',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          TextField(
            readOnly: true,
            enabled: false,
            maxLines: 2,
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.calendar_month,
                  size: 30,
                  color: Colors.black,
                ),
                labelText: "2022",
                labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 14),
                contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shadowColor: Colors.transparent,
                    backgroundColor: Color(0xFF614BC3)),
                child: Container(
                  width: 90,
                  height: 32,
                  child: Center(child: Text('Pengaturan')),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shadowColor: Colors.transparent,
                    side: BorderSide(color: const Color.fromARGB(45, 0, 0, 0)),
                    backgroundColor: Color.fromARGB(255, 248, 248, 248)),
                child: Container(
                  width: 90,
                  height: 32,
                  child: Center(
                      child: Text(
                    'Keluar',
                    style: TextStyle(color: Colors.black),
                  )),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
