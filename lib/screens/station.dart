import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyStation extends StatefulWidget {
  const MyStation({super.key});

  @override
  State<MyStation> createState() => _MyStationState();
}

class _MyStationState extends State<MyStation> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(fit: StackFit.loose, children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 300,
                        // width: double.infinity,
                        color: Colors.amber.shade50,
                        child:const GoogleMap(
                          initialCameraPosition: CameraPosition(
                              target: LatLng(28.656473, 77.242943), zoom: 9.4746),
                          mapType: MapType.normal,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 280),
                      height: MediaQuery.of(context).size.height,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              topRight: Radius.circular(22))),
                      child: DefaultTabController(
                        length: 5,
                        child: Column(children: [
                          TabBar(
                              padding: const EdgeInsets.only(top: 15),
                              physics: const BouncingScrollPhysics(),
                              tabs: [
                                Tab(
                                    text: "Drone Spray",
                                    icon: Image.asset('assets/images/drone.png',
                                        height: 30)),
                                Tab(
                                    text: "Transport",
                                    icon: Image.asset(
                                        'assets/images/delivery-truck.png',
                                        height: 30)),
                                Tab(
                                    text: "Storage",
                                    icon: Image.asset(
                                        'assets/images/storage.png',
                                        height: 30)),
                                Tab(
                                    text: "Manpower",
                                    icon: Image.asset(
                                        'assets/images/manpower.png',
                                        height: 30)),
                                Tab(
                                    text: "Soil Test",
                                    icon: Image.asset('assets/images/soil.png',
                                        height: 30))
                              ]),
                          Flexible(
                            child: TabBarView(children: [
                              SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(20),
                                      child: Text(
                                        "Available Drone Spraying",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 14, right: 14),
                                      child: SizedBox(
                                        height: 100,
                                        width: double.infinity,
                                        child: Card(
                                          elevation: .7,
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                height: 60,
                                                width: 75,
                                                child: Image.asset(
                                                  'assets/images/dronebg.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              SizedBox(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      RichText(
                                                        text: const TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    "Krishakti ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black87,
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              TextSpan(
                                                                  text:
                                                                      "drones with smart",
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .black54,
                                                                    fontSize:
                                                                        14,
                                                                  )),
                                                            ]),
                                                      ),
                                                      const SizedBox(
                                                        height: 7,
                                                      ),
                                                      RichText(
                                                        text: const TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    "nozzle spraying starting from",
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black54,
                                                                  fontSize: 15,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                  text: " \$56",
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        16,
                                                                  )),
                                                            ]),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 15,
                                              ),
                                              const Icon(
                                                Icons.arrow_forward_rounded,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 14, right: 14, top: 8),
                                      child: SizedBox(
                                        height: 100,
                                        width: double.infinity,
                                        child: Card(
                                          elevation: .7,
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                height: 60,
                                                width: 75,
                                                child: Image.asset(
                                                  'assets/images/dronebg.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              SizedBox(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      RichText(
                                                        text: const TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    "Krishakti ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black87,
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              TextSpan(
                                                                  text:
                                                                      "drones with smart",
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .black54,
                                                                    fontSize:
                                                                        14,
                                                                  )),
                                                            ]),
                                                      ),
                                                      const SizedBox(
                                                        height: 7,
                                                      ),
                                                      RichText(
                                                        text: const TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    "nozzle spraying starting from",
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black54,
                                                                  fontSize: 15,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                  text: " \$32",
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        16,
                                                                  )),
                                                            ]),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 15,
                                              ),
                                              const Icon(
                                                Icons.arrow_forward_rounded,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 14, right: 14, top: 8),
                                      child: SizedBox(
                                        height: 100,
                                        width: double.infinity,
                                        child: Card(
                                          elevation: .7,
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                height: 60,
                                                width: 75,
                                                child: Image.asset(
                                                  'assets/images/dronebg.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              SizedBox(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      RichText(
                                                        text: const TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    "Krishakti ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black87,
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              TextSpan(
                                                                  text:
                                                                      "drones with smart",
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .black54,
                                                                    fontSize:
                                                                        14,
                                                                  )),
                                                            ]),
                                                      ),
                                                      const SizedBox(
                                                        height: 7,
                                                      ),
                                                      RichText(
                                                        text: const TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    "nozzle spraying starting from",
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black54,
                                                                  fontSize: 15,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                  text: " \$32",
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        16,
                                                                  )),
                                                            ]),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 15,
                                              ),
                                              const Icon(
                                                Icons.arrow_forward_rounded,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(20),
                                      child: Text(
                                        "Recommended for you",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54),
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              height: 250,
                                              width: 200,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    child: Image.asset(
                                                      'assets/images/drone_spray.jpeg',
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10, bottom: 10),
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                            "Book Drone Spray  ",
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        61,
                                                                        8,
                                                                        8))),
                                                        Icon(
                                                          Icons
                                                              .arrow_forward_rounded,
                                                          color: Color.fromARGB(
                                                            255,
                                                            39,
                                                            7,
                                                            7,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                      "Spray your farms with smart precision spraying technology.")
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 24,
                                            ),
                                            SizedBox(
                                              height: 250,
                                              width: 200,
                                              child: Column(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    child: Image.asset(
                                                      'assets/images/tractor_in_farm.jpeg',
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10, bottom: 10),
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                            "Book Tractor        ",
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        61,
                                                                        8,
                                                                        8))),
                                                        Icon(
                                                          Icons
                                                              .arrow_forward_rounded,
                                                          color: Color.fromARGB(
                                                            255,
                                                            39,
                                                            7,
                                                            7,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                      "Tractor and other transport services for smart farming.")
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                child: Text("2"),
                              ),
                              const SizedBox(
                                child: Text("3"),
                              ),
                              const SizedBox(
                                child: Text("12"),
                              ),
                              const SizedBox(
                                child: Text("13"),
                              ),
                            ]),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: SizedBox(
                            width: 280,
                            child: TextField(
                              controller: myController,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search Area, Locality",
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            print(myController.text);
                          },
                          icon: const Icon(
                            Icons.search_rounded,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]
          )
        )
      );
  }
}
