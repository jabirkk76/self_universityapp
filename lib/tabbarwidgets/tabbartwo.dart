import 'package:flutter/material.dart';
import 'package:self_universityapp/controller/controllersecond.dart';

// ignore: must_be_immutable
class TabBarTwoWidget extends StatelessWidget {
  TabBarTwoWidget({super.key});
  ControllerClassSecond e = ControllerClassSecond();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        return Column(
          children: [
            SizedBox(
              height: 137,
              width: 400,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 137,
                    width: 154,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/unsplash_WQJvWU_HZFo.png'),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                    height: 137,
                    width: 154,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/unsplash_T1Yvmf4oleQ.png'),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                    height: 137,
                    width: 154,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/unsplash_WQJvWU_HZFo.png'),
                            fit: BoxFit.fill)),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12, top: 5),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/location 1.png'))),
                  ),
                ),
                Text('LOREUM IPSUM DOLOR SIT AMET,CONSECTETUR'.toLowerCase()),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('lOREM IPSUM DOLOR SIT AMET, CONSECTUR ADIPISCING ELIT.'
                      .toLowerCase()),
                  const Text(
                      'Neque accumsan,scelerisque eget lectes ullamcorper a'),
                  const Text(
                      'placerat.Porta cras at pretium varius purus cursus.Morbi'),
                  const Text(
                      'justo commodo habitant morbi quis pharetra posuere'),
                  const Text(
                      'mauris.Morbi sit risus.iam amet volutpat quis.Nisl'),
                  const Text('pelentesque nec facilisis ultrices.'),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Facilities',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/university 1.png'))),
                      ),
                      const Text('College in 400 mtrs')
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/bath (1) 1.png'))),
                      ),
                      const Text('Bathrooms :2')
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
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
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
