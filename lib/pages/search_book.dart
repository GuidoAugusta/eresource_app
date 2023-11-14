import 'package:flutter/material.dart';

class SearchBook extends StatelessWidget {
  const SearchBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Text(
                "Cari Buku",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 224, 223, 223),
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 127, 126, 126)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Cari buku",
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Color.fromARGB(255, 135, 133, 133),
                ),
                style: TextStyle(fontSize: 13, color: Colors.black),
              ),
            ),
            // Expanded(
            //     child: MasonryGridView.builder(
            //         padding: EdgeInsets.zero,
            //         mainAxisSpacing: 6,
            //         itemCount: 5,
            //         shrinkWrap: true,
            //         physics: const ScrollPhysics(),
            //         gridDelegate:
            //             const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            //           // childAspectRatio: 4 / 8,
            //           crossAxisCount: 2,
            //           // mainAxisExtent: 360,
            //         ),
            //         itemBuilder: (context, position) {
            //           return InkWell(
            //             onTap: () {
            //               Navigator.pushNamed(context, "/borrowbookpage");
            //             },
            //             child: Card(
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(8.0),
            //                   side: BorderSide(
            //                       color: const Color.fromARGB(60, 0, 0, 0))),
            //               child: Column(
            //                 children: [
            //                   Container(
            //                     margin: EdgeInsets.all(8),
            //                     child: ClipRRect(
            //                       borderRadius: BorderRadius.circular(0),
            //                       child: Image.asset('assets/book_cover1.png'),
            //                     ),
            //                   ),
            //                   Padding(
            //                     padding: const EdgeInsets.only(
            //                         left: 18, right: 18, top: 0),
            //                     child: Column(
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //                         Text(
            //                           'I LOST A PLANET AND GAINED A HOME',
            //                           textAlign: TextAlign.start,
            //                           overflow: TextOverflow.ellipsis,
            //                           maxLines: 2,
            //                           style: TextStyle(
            //                               fontFamily: 'Inter',
            //                               fontWeight: FontWeight.w700,
            //                               fontSize: 12),
            //                         ),
            //                         Padding(
            //                           padding: const EdgeInsets.only(top: 2),
            //                           child: Text(
            //                             'Katie Johnson',
            //                             textAlign: TextAlign.start,
            //                             overflow: TextOverflow.ellipsis,
            //                             maxLines: 2,
            //                             style: TextStyle(
            //                               fontFamily: 'Inter',
            //                               fontWeight: FontWeight.w500,
            //                               fontSize: 10,
            //                               color:
            //                                   Color.fromRGBO(21, 80, 60, 1.0),
            //                             ),
            //                           ),
            //                         ),
            //                         SizedBox(
            //                           height: 5,
            //                         ),
            //                         Padding(
            //                           padding: const EdgeInsets.only(top: 4),
            //                           child: Text(
            //                             "Tipe Buku : Hard Book",
            //                             textAlign: TextAlign.start,
            //                             overflow: TextOverflow.ellipsis,
            //                             maxLines: 2,
            //                             style: TextStyle(
            //                               fontFamily: 'Inter',
            //                               fontWeight: FontWeight.w500,
            //                               fontSize: 10,
            //                               color:
            //                                   Color.fromRGBO(21, 80, 60, 1.0),
            //                             ),
            //                           ),
            //                         ),
            //                         Padding(
            //                           padding: const EdgeInsets.only(top: 4),
            //                           child: Text(
            //                             "Tersedia : 2",
            //                             textAlign: TextAlign.start,
            //                             overflow: TextOverflow.ellipsis,
            //                             maxLines: 2,
            //                             style: TextStyle(
            //                               fontFamily: 'Inter',
            //                               fontWeight: FontWeight.w500,
            //                               fontSize: 10,
            //                               color:
            //                                   Color.fromRGBO(21, 80, 60, 1.0),
            //                             ),
            //                           ),
            //                         ),
            //                         Padding(
            //                           padding: const EdgeInsets.only(top: 4),
            //                           child: Text(
            //                             "Kategori : Novel",
            //                             textAlign: TextAlign.start,
            //                             overflow: TextOverflow.ellipsis,
            //                             maxLines: 2,
            //                             style: TextStyle(
            //                               fontFamily: 'Inter',
            //                               fontWeight: FontWeight.w500,
            //                               fontSize: 10,
            //                               color:
            //                                   Color.fromRGBO(21, 80, 60, 1.0),
            //                             ),
            //                           ),
            //                         ),
            //                         SizedBox(
            //                           height: 15,
            //                         )
            //                       ],
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           );
            //         }))
          ],
        ),
      ),
    );
  }
}
