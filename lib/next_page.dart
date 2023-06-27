import 'package:assignment/category_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            // height: 250,
            // width: double.infinity,
            child: Image.asset(
              'assets/images/bali-motel.png',
              fit: BoxFit.cover,
            ),
          ),
          Transform.translate(
            offset: const Offset(0, -48),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              padding: const EdgeInsets.fromLTRB(24, 12, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(6),
                    width: (MediaQuery.of(context).size.width) / 2,
                    child: const Text(
                      'BaLi Motel Vung Tau',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: const [
                      Icon(Icons.place_outlined),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Indonesia'),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.star_rounded,
                                color: Color.fromARGB(255, 233, 165, 48),
                              ),
                              Text(
                                '4.9',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '(6.8K review)',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 141, 137, 137),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      const Text(
                        '\$ 580/',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'night',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 186, 183, 183),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const ReadMoreText(
                    'Set in Vung Tau, 100 meters from Front Beach, Bali Motel Vung Tau offers accommodation with a garden, private parking and a shared',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 67, 66, 66),
                    ),
                    trimLines: 2,
                    trimLength: 129,
                    trimMode: TrimMode.Length,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: ' Show less',
                    colorClickableText: Colors.yellow,
                    moreStyle: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 250, 189, 77)),
                  ),
                  // Container(
                  //   padding: const EdgeInsets.symmetric(vertical: 12),
                  //   child: const Text(
                  //     'Set in Vung Tau, 100 meters from Front Beach, Bali Motel Vung Tau offers accommodation with a garden, private parking and a shared...Read more',
                  //     style: TextStyle(
                  //       fontSize: 14,
                  //       color: Color.fromARGB(255, 67, 66, 66),
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'What we offer',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    // padding: EdgeInsets.symmetric(vertical: 12),
                    height: 90,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        Category(Icon(Icons.hotel_outlined), '2 Bed', 75),
                        SizedBox(width: 6),
                        Category(
                            Icon(Icons.room_service_outlined), 'Dinner', 75),
                        SizedBox(width: 6),
                        Category(Icon(Icons.bathtub_outlined), 'Hot Tub', 75),
                        SizedBox(width: 6),
                        Category(Icon(Icons.ac_unit), '1 AC', 75),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Hosted by',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 50,
                            width: 50,
                            child: Image.asset('assets/images/face-image.png'),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(4),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Harleen Smith'),
                              const SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.star_rounded,
                                    color: Color.fromARGB(255, 233, 165, 48),
                                  ),
                                  Text(
                                    '4.9',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '(1.4K review)',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 141, 137, 137),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        const Icon(
                          Icons.sms,
                          color: Color.fromARGB(255, 245, 156, 22),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // ElevatedButton(
          //   onPressed: () {},
          //   child: const Text('Book Now'),
          // ),
        ],
      ),
    );
  }
}
