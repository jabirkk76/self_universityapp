import 'package:flutter/material.dart';
import 'package:self_universityapp/controller/controller.dart';
import 'package:self_universityapp/model/model.dart';
import 'package:self_universityapp/screens/notifications.dart';
import 'package:self_universityapp/screens/topcolleges.dart';
import 'package:self_universityapp/screens/university.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({
    super.key,
  });

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  ControllerClass a = ControllerClass();
  final GlobalKey<ScaffoldState>? drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: drawerKey,
        drawer: const NotificationWidget(),
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
            preferredSize: const Size(double.infinity, 225),
            child: Container(
              decoration: const BoxDecoration(
                  color: Color(0xFF0E3C6E),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              height: 225,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 50, left: 50),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Find your own way',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 70,
                        ),
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: SizedBox(
                            width: 100,
                            height: 70,
                            child: Stack(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      drawerKey!.currentState!.openDrawer();
                                    },
                                    icon: Image.asset(
                                        'assets/iconss/Vector.png')),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 13, left: 24),
                                  child: GestureDetector(
                                    onTap: () {
                                      drawerKey!.currentState!.openDrawer();
                                    },
                                    child: Image.asset(
                                        'assets/iconss/Ellipse 7.png'),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 151),
                      child: Text(
                        'Search in 1000+ Universities !',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, right: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 53,
                            width: 300,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: TextField(
                                  decoration: InputDecoration(
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.only(right: 18),
                                        child: Icon(Icons.search),
                                      ),
                                      hintText: 'Search for universities...',
                                      hintStyle: TextStyle(fontSize: 14),
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )),
        body: SingleChildScrollView(
          child: FutureBuilder(
            future: a.function(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Model>?> snapshot) {
              return Column(
                children: [
                  SizedBox(
                    height: 1000,
                    child: ListView.builder(
                      itemCount: snapshot.data?.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (ctx) {
                              return University(
                                alphatwo:
                                    snapshot.data?[index].alphaTwoCode ?? "",
                                universityname:
                                    snapshot.data?[index].name ?? "",
                                country: snapshot.data?[index].country ?? "",
                                domain:
                                    snapshot.data?[index].domains.toString() ??
                                        "",
                              );
                            }));
                          },
                          child: TopColleges(
                            titletext: snapshot.data?[index].name ?? "",
                            image: 'assets/Rectangle 141.png',
                            bottomtext: snapshot.data?[index].country ?? "",
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ));
  }
}
