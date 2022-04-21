import 'package:flutter/material.dart';
import 'package:myui/pharagrah.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
                Icon(
                  Icons.more_vert,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Summer BBQ',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(25),
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://th.bing.com/th/id/R.0d1068b80c85badeedf542b5a2a1c721?rik=ytN%2fi8jy2fmXFQ&pid=ImgRaw&r=0'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.spa,
                  children: [
                    const Text(
                      'Sandra Adams',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'to Trevor, Scott, Jennifer',
                      style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                    ),
                  ],
                )
              ],
            ),
            const Paragrah(),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        //color: Colors.whi,
        height: 80,
        width: 80,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.black,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 75,
          color: Colors.purple[800],
          child: Row(
            children: <Widget>[
              IconButton(
                tooltip: 'Open navigation menu',
                icon: const Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                tooltip: 'Search',
                icon: const Icon(
                  Icons.architecture,
                  size: 30,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                tooltip: 'Favorite',
                icon: const Icon(
                  Icons.star_border,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
