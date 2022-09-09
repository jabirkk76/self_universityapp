import 'package:flutter/material.dart';
import 'package:self_universityapp/controller/controllersecond.dart';
import 'package:self_universityapp/model/modelsecond.dart';
import 'package:self_universityapp/tabbarwidgets/tabbarone.dart';
import 'package:self_universityapp/tabbarwidgets/tabbartwo.dart';

class UniversityDetails extends StatefulWidget {
  const UniversityDetails({
    super.key,
    required this.image,
    required this.collegename,
    required this.country,
  });
  final String image;
  final String collegename;
  final String country;

  @override
  State<UniversityDetails> createState() => UniversityDetailsState();
}

class UniversityDetailsState extends State<UniversityDetails>
    with TickerProviderStateMixin {
  late TabController tabcontroller;
  ControllerClassSecond c = ControllerClassSecond();
  @override
  void initState() {
    tabcontroller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 80),
          child: Container(
            // ignore: sort_child_properties_last
            child: Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 140),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset('assets/Vector (2).png'),
                  ),
                ],
              ),
            ),
            height: 100,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFF0E3C6E),
            ),
          )),
      body: SingleChildScrollView(
        child: FutureBuilder(
          future: c.functionSecond(),
          builder: (BuildContext context, AsyncSnapshot<ModelSecond> snapshot) {
            return Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.image), fit: BoxFit.fill)),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        widget.collegename,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 82),
                      child: SizedBox(
                        width: 71,
                        height: 85,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.purple),
                            onPressed: () {},
                            child: Row(
                              children: [
                                const Text(
                                  '4.4',
                                  style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Container(
                                    height: 20,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/Vector (1).png'))),
                                  ),
                                )
                              ],
                            )),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const SizedBox(
                  width: 370,
                ),
                Container(
                  height: 180,
                  width: 310,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/download (1).jfif'),
                          fit: BoxFit.fill),
                      border: Border.all(color: Colors.grey),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'bpi -eUR :',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text(snapshot.data?.bpi?.eUR.toString() ?? ""),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'Updated :',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text(snapshot.data?.time?.updated ?? ""),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'Updateduk :',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text(snapshot.data?.time?.updateduk ?? ""),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'ChartName :',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text(snapshot.data?.chartName ?? ""),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                TabBar(
                  labelStyle: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  labelColor: Colors.black,
                  controller: tabcontroller,
                  tabs: const [
                    Tab(
                      text: 'About',
                    ),
                    Tab(
                      text: 'Hostel facility',
                    ),
                    Tab(
                      text: 'Q & A',
                    ),
                    Tab(
                      text: 'Events',
                    ),
                  ],
                ),
                SizedBox(
                  height: 1000,
                  child: TabBarView(controller: tabcontroller, children: [
                    AboutUniversityWidget(),
                    TabBarTwoWidget(),
                    AboutUniversityWidget(),
                    AboutUniversityWidget(),
                  ]),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
