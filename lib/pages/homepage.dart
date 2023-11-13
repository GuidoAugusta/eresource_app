import 'package:carousel_slider/carousel_slider.dart';
import 'package:eresource/pages/search_book.dart';
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
  List<MenuHomepage> _menuList = [];
  final List<MenuBuku> _bukuList = [];
  final CarouselController _controller = CarouselController();
  final List<Widget> imageSliders = [
    Container(
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: Colors.amber,
      ),
      child: Image.asset(
        'assets/banner_homepage.png',
        height: 115,
        fit: BoxFit.fill,
      ),
    ),
    Container(
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: Colors.amber,
      ),
      child: Image.asset(
        'assets/banner_homepage.png',
        height: 100,
        fit: BoxFit.fill,
      ),
    )
  ];
  @override
  void initState() {
    super.initState();

    //belum bisa menampilkan icon svg
    _menuList.add(MenuHomepage(
      image: Icon(
        Icons.menu_book,
        color: Colors.white,
      ),
      color: const Color.fromARGB(255, 10, 40, 43),
      title: "Pinjam Buku",
      navigator: "/borrowpage",
    ));
    _menuList.add(MenuHomepage(
      image: Icon(
        Icons.book,
        color: Colors.white,
      ),
      color: const Color.fromARGB(255, 32, 32, 49),
      title: "Pinjaman Aktif",
      navigator: "/activeborrow",
    ));
    _menuList.add(MenuHomepage(
      image: Icon(
        Icons.collections_bookmark_rounded,
        color: Colors.white,
      ),
      color: const Color.fromARGB(255, 34, 23, 80),
      title: "Riwayat Pinjam",
      navigator: "/historyborrow",
    ));
    _menuList.add(MenuHomepage(
      image: Icon(
        Icons.meeting_room,
        color: Colors.white,
      ),
      color: const Color.fromARGB(255, 21, 80, 60),
      title: "Pinjam Ruang",
      navigator: "/ruanganpage",
    ));
    _menuList.add(MenuHomepage(
      image: Icon(
        Icons.book_online_rounded,
        color: Colors.white,
      ),
      color: const Color.fromARGB(255, 32, 32, 49),
      title: "eBook",
      navigator: "/ebookpage",
    ));
    _menuList.add(MenuHomepage(
      image: Icon(
        Icons.live_help_rounded,
        color: Colors.white,
      ),
      color: const Color.fromARGB(255, 10, 40, 43),
      title: "Bantuan",
      navigator: "/bantuanpage",
    ));

    _bukuList.add(MenuBuku(
      image: Image.asset(
        'assets/book_cover1.png',
        fit: BoxFit.cover,
      ),
      title: "I LOST A PLANET AND GAINED A HOME",
      penulis: "Katie Johnson",
      tipe: "Hard Book",
      tersedia: 2,
      kategori: "Novel",
      navigator: "/borrowbookpage",
    ));
    _bukuList.add(MenuBuku(
      image: Image.asset(
        'assets/buku2.png',
        fit: BoxFit.cover,
      ),
      title: "NOVEL MELANGKAH BERSAMA",
      penulis: "Olivia Wilson",
      tipe: "Hard Book",
      tersedia: 4,
      kategori: "Novel",
      navigator: "/buku2",
    ));
    _bukuList.add(MenuBuku(
      image: Image.asset(
        'assets/buku3.png',
        fit: BoxFit.cover,
      ),
      title: "CONQUEST OF FLAMES",
      penulis: "Shawn Garcia",
      tipe: "Hard Book",
      tersedia: 2,
      kategori: "Novel",
      navigator: "/buku3",
    ));
    _bukuList.add(MenuBuku(
      image: Image.asset(
        'assets/buku4.png',
        fit: BoxFit.cover,
      ),
      title: "BUKU NOVEL SWORD",
      penulis: "Olivia Wilson",
      tipe: "Ebook",
      tersedia: 1,
      kategori: "Novel",
      navigator: "/buku4",
    ));
    _bukuList.add(MenuBuku(
      image: Image.asset(
        'assets/buku5.png',
        fit: BoxFit.cover,
      ),
      title: "WALK INTO THE SHADOW",
      penulis: "Estelle Darcy",
      tipe: "Ebook",
      tersedia: 1,
      kategori: "Novel",
      navigator: "/buku5",
    ));
    _bukuList.add(MenuBuku(
      image: Image.asset(
        'assets/buku6.png',
        fit: BoxFit.cover,
      ),
      title: "BUKU FALLEN ANGEL",
      penulis: "Daniel Gallego",
      tipe: "Ebook",
      tersedia: 2,
      kategori: "Novel",
      navigator: "/buku6",
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
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
                  padding: const EdgeInsets.all(20),
                  child: IconButton(
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
            SizedBox(
              height: 0,
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
                  height: 115,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 5),
                  viewportFraction: 0.85,
                  enlargeCenterPage: false,
                  aspectRatio: 15 / 5,
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SearchBook()),
                      );
                    },
                    child: Text(
                      'Lihat Semua',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 52, 135, 141)),
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
          itemCount: _menuList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, position) {
            return _rowMenuHomepage(_menuList[position]);
          },
        ),
      ),
    );
  }

  Widget _rowMenuHomepage(MenuHomepage) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        Navigator.of(context).pushNamed(MenuHomepage.navigator);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: MenuHomepage.color,
              ),
              SizedBox(
                width: 25,
                height: 25,
                child: MenuHomepage.image,
              )
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 6)),
          Text(
            MenuHomepage.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildRekomendasiBuku() {
    return MasonryGridView.builder(
      mainAxisSpacing: 6,
      itemCount: _bukuList.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        // childAspectRatio: 4 / 8,
        crossAxisCount: 2,
        // mainAxisExtent: 360,
      ),
      itemBuilder: (context, position) {
        return _rowRekomendasiBuku(_bukuList[position]);
      },
    );
  }

  Widget _rowRekomendasiBuku(MenuBuku) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        Navigator.of(context).pushNamed(MenuBuku.navigator);
      },
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(color: const Color.fromARGB(60, 0, 0, 0))),
        child: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.only(top: 8),
            //   child: ClipRRect(child: MenuBuku.image),
            // ),
            Container(
              margin: EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: MenuBuku.image,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    MenuBuku.title,
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
                      MenuBuku.penulis,
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
                      "Tipe Buku : ${MenuBuku.tipe}",
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
                      "Tersedia : ${MenuBuku.tersedia}",
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
                      "Kategori : ${MenuBuku.kategori}",
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
