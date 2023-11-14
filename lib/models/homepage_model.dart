import 'package:flutter/material.dart';

class MenuHomepage {
  Widget image;
  Color color;
  String title;
  String navigator;

  MenuHomepage(
      {required this.image,
      required this.title,
      required this.color,
      required this.navigator});
}

class MenuBuku {
  Widget image;
  String title;
  String penulis;
  String tipe;
  int tersedia;
  String kategori;
  String navigator;
  String tahunTerbit;
  String jmlHalaman;
  double rating;
  String sinopsis;
  String bahasa;

  MenuBuku({
    required this.image,
    required this.title,
    required this.penulis,
    required this.tipe,
    required this.tersedia,
    required this.kategori,
    required this.navigator,
    required this.tahunTerbit,
    required this.jmlHalaman,
    required this.rating,
    required this.sinopsis,
    required this.bahasa,
  });
}

var menuList = [
  MenuHomepage(
    image: Icon(
      Icons.menu_book,
      color: Colors.white,
    ),
    color: const Color.fromARGB(255, 10, 40, 43),
    title: "Pinjam Buku",
    navigator: "/borrowpage",
  ),
  MenuHomepage(
    image: Icon(
      Icons.book,
      color: Colors.white,
    ),
    color: const Color.fromARGB(255, 32, 32, 49),
    title: "Pinjaman Aktif",
    navigator: "/activeborrow",
  ),
  MenuHomepage(
    image: Icon(
      Icons.collections_bookmark_rounded,
      color: Colors.white,
    ),
    color: const Color.fromARGB(255, 34, 23, 80),
    title: "Riwayat Pinjam",
    navigator: "/historyborrow",
  ),
  MenuHomepage(
    image: Icon(
      Icons.meeting_room,
      color: Colors.white,
    ),
    color: const Color.fromARGB(255, 21, 80, 60),
    title: "Pinjam Ruang",
    navigator: "/ruanganpage",
  ),
  MenuHomepage(
    image: Icon(
      Icons.book_online_rounded,
      color: Colors.white,
    ),
    color: const Color.fromARGB(255, 32, 32, 49),
    title: "eBook",
    navigator: "/ebookpage",
  ),
  MenuHomepage(
    image: Icon(
      Icons.live_help_rounded,
      color: Colors.white,
    ),
    color: const Color.fromARGB(255, 10, 40, 43),
    title: "Bantuan",
    navigator: "/bantuanpage",
  ),
];

var bukuList = [
  MenuBuku(
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
    tahunTerbit: "2016",
    jmlHalaman: "184",
    rating: 4.4,
    sinopsis:
        "Sinopsis1.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam rhoncus hendrerit purus. Aenean non dui ut mauris mollis maximus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed auctor lectus a vehicula malesuada. Vestibulum aliquam tincidunt urna eget efficitur. Cras a volutpat diam. Fusce pellentesque turpis odio, vel rhoncus sem blandit nec. Cras condimentum molestie eros, non gravida nulla facilisis et. Mauris vitae ante bibendum, gravida purus quis, cursus augue. Donec quis rutrum nisi, eget accumsan est.\n\nDonec scelerisque, lectus tempor consectetur auctor, ante magna posuere lacus, in commodo eros enim non mauris. Praesent libero est, pulvinar vitae felis vel, fermentum mollis urna. Sed ut justo consectetur, posuere enim consectetur, dapibus ex. Etiam vitae diam tempor dui finibus convallis. Fusce dictum bibendum ante, sed auctor mauris feugiat vitae.",
    bahasa: "Inggris",
  ),
  MenuBuku(
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
    tahunTerbit: "2015",
    jmlHalaman: "166",
    rating: 4.5,
    sinopsis:
        "Sinopsis2.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam rhoncus hendrerit purus. Aenean non dui ut mauris mollis maximus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed auctor lectus a vehicula malesuada. Vestibulum aliquam tincidunt urna eget efficitur. Cras a volutpat diam. Fusce pellentesque turpis odio, vel rhoncus sem blandit nec. Cras condimentum molestie eros, non gravida nulla facilisis et. Mauris vitae ante bibendum, gravida purus quis, cursus augue. Donec quis rutrum nisi, eget accumsan est.\n\nDonec scelerisque, lectus tempor consectetur auctor, ante magna posuere lacus, in commodo eros enim non mauris. Praesent libero est, pulvinar vitae felis vel, fermentum mollis urna. Sed ut justo consectetur, posuere enim consectetur, dapibus ex. Etiam vitae diam tempor dui finibus convallis. Fusce dictum bibendum ante, sed auctor mauris feugiat vitae.",
    bahasa: "Indonesia",
  ),
  MenuBuku(
    image: Image.asset(
      'assets/buku3.png',
      fit: BoxFit.cover,
    ),
    title: "CONQUEST OF FLAMES",
    penulis: "Shawn Garcia",
    tipe: "Hard Book",
    tersedia: 3,
    kategori: "Novel",
    navigator: "/buku3",
    tahunTerbit: "2017",
    jmlHalaman: "214",
    rating: 4.3,
    sinopsis:
        "Sinopsis3.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam rhoncus hendrerit purus. Aenean non dui ut mauris mollis maximus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed auctor lectus a vehicula malesuada. Vestibulum aliquam tincidunt urna eget efficitur. Cras a volutpat diam. Fusce pellentesque turpis odio, vel rhoncus sem blandit nec. Cras condimentum molestie eros, non gravida nulla facilisis et. Mauris vitae ante bibendum, gravida purus quis, cursus augue. Donec quis rutrum nisi, eget accumsan est.\n\nDonec scelerisque, lectus tempor consectetur auctor, ante magna posuere lacus, in commodo eros enim non mauris. Praesent libero est, pulvinar vitae felis vel, fermentum mollis urna. Sed ut justo consectetur, posuere enim consectetur, dapibus ex. Etiam vitae diam tempor dui finibus convallis. Fusce dictum bibendum ante, sed auctor mauris feugiat vitae.",
    bahasa: "Inggris",
  ),
  MenuBuku(
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
    tahunTerbit: "2020",
    jmlHalaman: "178",
    rating: 4.6,
    sinopsis:
        "Sinopsis4.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam rhoncus hendrerit purus. Aenean non dui ut mauris mollis maximus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed auctor lectus a vehicula malesuada. Vestibulum aliquam tincidunt urna eget efficitur. Cras a volutpat diam. Fusce pellentesque turpis odio, vel rhoncus sem blandit nec. Cras condimentum molestie eros, non gravida nulla facilisis et. Mauris vitae ante bibendum, gravida purus quis, cursus augue. Donec quis rutrum nisi, eget accumsan est.\n\nDonec scelerisque, lectus tempor consectetur auctor, ante magna posuere lacus, in commodo eros enim non mauris. Praesent libero est, pulvinar vitae felis vel, fermentum mollis urna. Sed ut justo consectetur, posuere enim consectetur, dapibus ex. Etiam vitae diam tempor dui finibus convallis. Fusce dictum bibendum ante, sed auctor mauris feugiat vitae.",
    bahasa: "Inggris",
  ),
  MenuBuku(
    image: Image.asset(
      'assets/buku5.png',
      fit: BoxFit.cover,
    ),
    title: "WALK INTO THE SHADOW",
    penulis: "Estelle Darcy",
    tipe: "Ebook",
    tersedia: 5,
    kategori: "Novel",
    navigator: "/buku5",
    tahunTerbit: "2016",
    jmlHalaman: "156",
    rating: 4.5,
    sinopsis:
        "Sinopsis5.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam rhoncus hendrerit purus. Aenean non dui ut mauris mollis maximus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed auctor lectus a vehicula malesuada. Vestibulum aliquam tincidunt urna eget efficitur. Cras a volutpat diam. Fusce pellentesque turpis odio, vel rhoncus sem blandit nec. Cras condimentum molestie eros, non gravida nulla facilisis et. Mauris vitae ante bibendum, gravida purus quis, cursus augue. Donec quis rutrum nisi, eget accumsan est.\n\nDonec scelerisque, lectus tempor consectetur auctor, ante magna posuere lacus, in commodo eros enim non mauris. Praesent libero est, pulvinar vitae felis vel, fermentum mollis urna. Sed ut justo consectetur, posuere enim consectetur, dapibus ex. Etiam vitae diam tempor dui finibus convallis. Fusce dictum bibendum ante, sed auctor mauris feugiat vitae.",
    bahasa: "Inggris",
  ),
  MenuBuku(
    image: Image.asset(
      'assets/buku6.png',
      fit: BoxFit.cover,
    ),
    title: "BUKU FALLEN ANGEL",
    penulis: "Daniel Gallego",
    tipe: "Ebook",
    tersedia: 3,
    kategori: "Novel",
    navigator: "/buku6",
    tahunTerbit: "2017",
    jmlHalaman: "189",
    rating: 4.6,
    sinopsis:
        "Sinopsis6.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam rhoncus hendrerit purus. Aenean non dui ut mauris mollis maximus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed auctor lectus a vehicula malesuada. Vestibulum aliquam tincidunt urna eget efficitur. Cras a volutpat diam. Fusce pellentesque turpis odio, vel rhoncus sem blandit nec. Cras condimentum molestie eros, non gravida nulla facilisis et. Mauris vitae ante bibendum, gravida purus quis, cursus augue. Donec quis rutrum nisi, eget accumsan est.\n\nDonec scelerisque, lectus tempor consectetur auctor, ante magna posuere lacus, in commodo eros enim non mauris. Praesent libero est, pulvinar vitae felis vel, fermentum mollis urna. Sed ut justo consectetur, posuere enim consectetur, dapibus ex. Etiam vitae diam tempor dui finibus convallis. Fusce dictum bibendum ante, sed auctor mauris feugiat vitae.",
    bahasa: "Inggris",
  ),
];
