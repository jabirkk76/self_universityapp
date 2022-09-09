import 'package:flutter/material.dart';
import 'package:self_universityapp/controller/controller.dart';

class TopColleges extends StatefulWidget {
  const TopColleges(
      {Key? key,
      required this.titletext,
      required this.bottomtext,
      required this.image})
      : super(key: key);
  final String titletext;
  final String bottomtext;
  final String image;

  @override
  State<TopColleges> createState() => _TopCollegesState();
}

class _TopCollegesState extends State<TopColleges> {
  ControllerClass b = ControllerClass();
  int? groupValue;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Stack(
              children: [
                Container(
                  height: 212,
                  width: 354,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.image), fit: BoxFit.fill)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 23,
                      top: 22,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.titletext,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, right: 120),
                          child: Text(
                            widget.bottomtext,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 12),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: TextButton(
                                    style: TextButton.styleFrom(
                                        // ignore: deprecated_member_use
                                        primary: Colors.white),
                                    onPressed: () {
                                      showModalBottomSheet(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(42),
                                                  topRight:
                                                      Radius.circular(42))),
                                          context: context,
                                          builder: (c) {
                                            return StatefulBuilder(builder:
                                                (context,
                                                    StateSetter setModalState) {
                                              return Container(
                                                  height: 400,
                                                  width: 310,
                                                  decoration:
                                                      const BoxDecoration(),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          const Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 30,
                                                                    top: 20),
                                                            child: Text(
                                                              'Sort by',
                                                              style: TextStyle(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    right: 25,
                                                                    top: 20),
                                                            child:
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      Navigator.pop(
                                                                          context);
                                                                    },
                                                                    child: const Icon(
                                                                        Icons
                                                                            .close)),
                                                          )
                                                        ],
                                                      ),
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 30,
                                                                right: 30),
                                                        child: Divider(
                                                          thickness: 1,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          left: 30,
                                                        ),
                                                        child: Row(
                                                          children: [
                                                            const Text(
                                                              'Bachelor of Technology',
                                                              style: TextStyle(
                                                                fontSize: 18,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 90),
                                                              child:
                                                                  GestureDetector(
                                                                child: Radio(
                                                                    value: 1,
                                                                    groupValue:
                                                                        groupValue,
                                                                    onChanged:
                                                                        (value) {
                                                                      setModalState(
                                                                          () {
                                                                        groupValue =
                                                                            value ??
                                                                                0;
                                                                      });
                                                                    }),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 30,
                                                                top: 15),
                                                        child: Row(
                                                          children: [
                                                            const Text(
                                                              'Bachelor of Architecture',
                                                              style: TextStyle(
                                                                fontSize: 18,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 85),
                                                              child: Radio(
                                                                  value: 2,
                                                                  groupValue:
                                                                      groupValue,
                                                                  onChanged:
                                                                      (value) {
                                                                    setModalState(
                                                                        () {
                                                                      groupValue =
                                                                          value ??
                                                                              0;
                                                                    });
                                                                  }),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 30,
                                                                top: 15),
                                                        child: Row(
                                                          children: [
                                                            const Text(
                                                              'Pharmacy',
                                                              style: TextStyle(
                                                                fontSize: 18,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left:
                                                                          199),
                                                              child: Radio(
                                                                  value: 3,
                                                                  groupValue:
                                                                      groupValue,
                                                                  onChanged:
                                                                      (value) {
                                                                    setModalState(
                                                                        () {
                                                                      groupValue =
                                                                          value ??
                                                                              0;
                                                                    });
                                                                  }),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 30,
                                                                top: 15),
                                                        child: Row(
                                                          children: [
                                                            const Text(
                                                              'Law',
                                                              style: TextStyle(
                                                                fontSize: 18,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left:
                                                                          247),
                                                              child: Radio(
                                                                  value: 4,
                                                                  groupValue:
                                                                      groupValue,
                                                                  onChanged:
                                                                      (value) {
                                                                    setModalState(
                                                                        () {
                                                                      groupValue =
                                                                          value ??
                                                                              0;
                                                                    });
                                                                  }),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 30,
                                                                top: 15),
                                                        child: Row(
                                                          children: [
                                                            const Text(
                                                              'Management',
                                                              style: TextStyle(
                                                                fontSize: 18,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left:
                                                                          175),
                                                              child: Radio(
                                                                  value: 5,
                                                                  groupValue:
                                                                      groupValue,
                                                                  onChanged:
                                                                      (value) {
                                                                    setModalState(
                                                                        () {
                                                                      groupValue =
                                                                          value ??
                                                                              0;
                                                                    });
                                                                  }),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: const [
                                                          Icon(Icons.select_all)
                                                        ],
                                                      )
                                                    ],
                                                  ));
                                            });
                                          });
                                    },
                                    child: const Text('Click')),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
