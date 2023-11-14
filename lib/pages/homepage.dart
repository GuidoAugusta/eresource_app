import 'package:carousel_slider/carousel_slider.dart';
import 'package:eresource/pages/borrowbook_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../models/homepage_model.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CarouselController _controller = CarouselController();
  final List<Widget> imageSliders = [
    Container(
      width: 300,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 3,
        child: Image.asset(
          'assets/bannerHomepage.png',
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      width: 300,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 3,
        child: Image.asset(
          'assets/bannerHomepage.png',
          fit: BoxFit.fill,
        ),
      ),
    ),
  ];
  @override
  void initState() {
    super.initState();
  }
  //belum bisa menampilkan icon svg

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Image.asset('assets/profile.png'),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'HALO,',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              'Guido Augusta',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: IconButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        constraints: BoxConstraints(),
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications_none_outlined,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Informasi Perpustakaan',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: CarouselSlider(
              items: imageSliders,
              carouselController: _controller,
              options: CarouselOptions(
                height: 120,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                viewportFraction: 0.8,
                enlargeCenterPage: false,
                enableInfiniteScroll: true,
                padEnds: false,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Menu',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _buildMenuHomepage(),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rekomendasi Buku',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent)),
                  onPressed: () {},
                  child: Text(
                    'Lihat Semua',
                    style: TextStyle(
                        fontSize: 12, color: Color.fromARGB(255, 52, 135, 141)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: _buildRekomendasiBuku(),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuHomepage() {
    return SizedBox(
      width: double.infinity,
      height: 220,
      child: Container(
        // color: Colors.amber,
        // margin: const EdgeInsets.only(top: 0, bottom: 50),
        child: GridView.builder(
          padding: EdgeInsets.all(10),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: menuList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            final MenuHomepage menu = menuList[index];
            return InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                Navigator.of(context).pushNamed(menu.navigator);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: menu.color,
                      ),
                      SizedBox(
                        width: 25,
                        height: 25,
                        child: menu.image,
                      )
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(top: 6)),
                  Text(
                    menu.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildRekomendasiBuku() {
    return MasonryGridView.builder(
      mainAxisSpacing: 6,
      itemCount: bukuList.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        // childAspectRatio: 4 / 8,
        crossAxisCount: 2,
        // mainAxisExtent: 360,
      ),
      itemBuilder: (context, index) {
        final MenuBuku buku = bukuList[index];
        return _rowRekomendasiBuku(buku);
      },
    );
  }

  Widget _rowRekomendasiBuku(buku) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return BorrowBook(buku: buku);
        }));
      },
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(color: const Color.fromARGB(60, 0, 0, 0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Padding(
            //   padding: const EdgeInsets.only(top: 8),
            //   child: ClipRRect(child: buku.image),
            // ),
            Container(
              margin: EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: buku.image,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 14, top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    buku.title,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        fontSize: 12),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(
                      buku.penulis,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: Color.fromRGBO(21, 80, 60, 1.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      "Tipe Buku : ${buku.tipe}",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: Color.fromRGBO(21, 80, 60, 1.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      "Tersedia : ${buku.tersedia}",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: Color.fromRGBO(21, 80, 60, 1.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      "Kategori : ${buku.kategori}",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: Color.fromRGBO(21, 80, 60, 1.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
