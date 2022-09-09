// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

import 'package:self_universityapp/screens/universitydetails.dart';

class University extends StatelessWidget {
  University({
    Key? key,
    required this.universityname,
    required this.country,
    required this.domain,
    required this.alphatwo,
  }) : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  var universityname;
  final String country;
  final String domain;
  final String alphatwo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 256,
            width: 360,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              border: Border.all(width: 2, color: Colors.grey),
              image: const DecorationImage(
                  image: AssetImage('assets/unsplash_Ucr4Yp-t364.png'),
                  fit: BoxFit.fill),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              universityname,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
              child: Text(
            country,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          )),
          Padding(
            padding: const EdgeInsets.only(
              left: 280,
            ),
            child: SizedBox(
              height: 55,
              width: 69,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                  onPressed: () {},
                  child: Row(
                    children: [
                      const Text(
                        '4.4',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: Container(
                          height: 20,
                          width: 16,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/Vector (1).png'))),
                        ),
                      )
                    ],
                  )),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 370,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Center(
                    child: SizedBox(
                      height: 60,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shadowColor: Colors.black,
                              backgroundColor:
                                  const Color.fromARGB(255, 11, 41, 208)),
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (ctx) {
                              return UniversityDetails(
                                  country: country,
                                  collegename: universityname,
                                  image: 'assets/unsplash_Ucr4Yp-t364.png');
                            }));
                          },
                          child: const Text(
                            'Apply',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          )),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 60,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/like 1.png'))),
              ),
              const Text('More than 1000+ students have been placed')
            ],
          )
        ]),
      ),
    );
  }
}
