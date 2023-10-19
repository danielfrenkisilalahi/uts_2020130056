import 'package:flutter/material.dart';
import 'package:uts_2020130056/jersey.dart';
import 'package:uts_2020130056/login_screen.dart';
import 'package:uts_2020130056/product_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  var listJersey = <Jersey>[
    Jersey(
        title: 'Jersey SwingMan Lakers leBron james 6',
        image: 'images/baju1.png',
        price: 600000,
        description:
            'Bahan polyester full print, kualitas lokal 100% sesuai foto produk. leBron james Adalah pemain basket terbaik sekaligus permain tertua di NBA yang masih aktif dalam merebutkan gelar juara bersama Los Angeles Lakers'),
    Jersey(
        title: 'Jersey SwingMan Hornets Lamelo Ball 2',
        image: 'images/baju2.png',
        price: 500000,
        description:
            'Bahan polyester full print, kualitas lokal 100% sesuai foto produk, Lamelo ball, salah satu bintang di NBA yang terkenal dengan passing passing cantik yang selalu dia lakukan di tengah pertandingan NBA, lamelo juga jadi pemain penting saat ini di tim Charlote hornets'),
    Jersey(
        title: 'Jersey NBA x Supreme All Team',
        image: 'images/baju3.png',
        price: 1000000,
        description:
            'Bahan polyester full print, kualitas lokal 100% sesuai foto produk, Jersey NBA x Supreme ini unik karena di desain secara abstrak dengan memasukan semua logo tim di NBA secara abstrak'),
    Jersey(
        title: 'Jersey SwingMan Heat Jimmy Butler 22',
        image: 'images/baju4.png',
        price: 450000,
        description:
            'Bahan polyester full print, kualitas lokal 100% sesuai foto produk, Jmmy butler pemain yang terkenal karena dianggap menjadi pemain yang paling sering membuat tingkah aneh di nba, di tim nya dia sekarang menjadi tombak utama untuk meraih kemenangan bersama miami heat'),
    Jersey(
        title: 'Jersey SwingMan Sixers Joel Embiid 21',
        image: 'images/baju5.png',
        price: 600000,
        description:
            'Bahan polyester full print, kualitas lokal 100% sesuai foto produk, MR MVP Joel embiid, pemain dengan statistik paling konsisten di NBA 2023 dan juga sekaligus leader bagi tim nya di Philadelphia sixers '),
    Jersey(
        title: 'Jersey SwingMan Heat Pink Phanter Wade 3',
        image: 'images/baju6.png',
        price: 500000,
        description:
            'Bahan polyester full print, kualitas lokal 100% sesuai foto produk Legenda NBA yang terkenal karena permainan nya yang sangat atletis yaitu Dwayne Wade, jersey variasi ini dibuat dengan desain warna yang unik'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.shopping_cart),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Our Product",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 24,
                    fontStyle: FontStyle.normal),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 24,
              ),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: .65,
                children: List.generate(
                  listJersey.length,
                  (index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ProductScreen(
                              jersey: listJersey[index],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 206, 206, 206),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Image.asset(
                                listJersey[index].image!,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(listJersey[index].title!),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
