import 'package:flutter/material.dart';
import 'package:self_universityapp/controller/controllersecond.dart';
import 'package:self_universityapp/controller/controllerthird.dart';
import 'package:self_universityapp/model/modelsecond.dart';
import 'package:self_universityapp/model/modelthird.dart';

// ignore: must_be_immutable
class AboutUniversityWidget extends StatelessWidget {
  AboutUniversityWidget({super.key});
  ControllerClassSecond d = ControllerClassSecond();
  ControllerClassThird e = ControllerClassThird();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: FutureBuilder(
        future: d.functionSecond(),
        builder: (BuildContext context, AsyncSnapshot<ModelSecond> snapshot1) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Disclaimer',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(snapshot1.data?.disclaimer ?? ""),
              const SizedBox(
                height: 20,
              ),
              FutureBuilder(
                  future: e.functionthird(),
                  builder: (context, AsyncSnapshot<ModelThird> snapshot2) {
                    return Text(snapshot2.data?.results?[0].name?.title ?? "");
                  }),
              const Text(
                'Location',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 219,
                width: 365,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Background.png'),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Student Review',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/unsplash_71NgiXcdTzE.png'),
                              fit: BoxFit.fill)),
                      height: 80,
                      width: 70,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/unsplash_Q76DPRQ3Ix0.png'),
                                fit: BoxFit.fill)),
                        height: 80,
                        width: 70,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/unsplash_71NgiXcdTzE.png'),
                              fit: BoxFit.fill)),
                      height: 80,
                      width: 70,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/unsplash_Q76DPRQ3Ix0.png'),
                                fit: BoxFit.fill)),
                        height: 80,
                        width: 70,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            color: Color(0xFFC4C4C4)),
                        height: 80,
                        width: 70,
                        child: const Text(
                          '+12',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Arun sai',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                        'Lorem ipsum dolor sit amet,consectetur adipiscing elit.'),
                    const Text(
                        'Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla'),
                    const Text(
                        'sit magna suscipit tellus malesuada in facillisi a.'),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 242, 219, 13),
                        ),
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 242, 219, 13),
                        ),
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 242, 219, 13),
                        ),
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 242, 219, 13),
                        ),
                        Icon(
                          Icons.star_half_rounded,
                          color: Color.fromARGB(255, 242, 219, 13),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 75,
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (ctx) {
                        return Dialog(
                          child: SizedBox(
                            height: 120,
                            width: 300,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Applied successfully',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  CircleAvatar(
                                    backgroundColor:
                                        Color.fromARGB(255, 64, 175, 68),
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
                child: Container(
                  height: 56,
                  width: 366,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Color(0xFF0E3C6E)),
                  child: const Center(
                    child: Text(
                      'Apply now',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              )
            ],
          );
        },
      ),
    );
  }
}
