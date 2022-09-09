import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0E3C6E),
        centerTitle: true,
        title: const Text(
          'Notifications',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        image: DecorationImage(
                            image: AssetImage('assets/google.png'),
                            fit: BoxFit.fill),
                      ),
                      height: 43,
                      width: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'New Google+ notifications',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Earl Lybyrd:Added you back')
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 10),
              child: Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      image: DecorationImage(
                          image: AssetImage('assets/crjfif.jfif'),
                          fit: BoxFit.fill),
                    ),
                    height: 40,
                    width: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'New coursebank notifications',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('layak:Make meeting today')
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 10),
              child: Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      image: DecorationImage(
                          image: AssetImage('assets/download.jfif'),
                          fit: BoxFit.fill),
                    ),
                    height: 40,
                    width: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'New Zoyas notifications',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Roy:Make meeting today pls')
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
