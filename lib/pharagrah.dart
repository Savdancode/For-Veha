import 'package:flutter/material.dart';

class Paragrah extends StatelessWidget {
  const Paragrah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          const Text(
            'In the decoration property we supply a new BoxDecoration() object and this object should have an image property which points to the image resource URL. In the above snippet, image propery is instantiated a NetworkImage() object which is pointing to an image URL.',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 15,
          ),
          Divider(
            height: 10,
            color: Colors.grey[900],
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
            ],
          )
        ],
      ),
    );
  }
}
