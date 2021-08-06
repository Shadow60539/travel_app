import 'package:cached_network_image/cached_network_image.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:travel_app/application/bloc/places_bloc.dart';
import 'package:travel_app/core/colors.dart';
import 'package:travel_app/core/strings.dart';
import 'package:travel_app/presentation/widgets/place_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PlacesBloc, PlacesState>(
      listener: (context, state) {
        print(state.favCount);
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state.isLoading!) {
          return Scaffold(
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('assets/loading.json', height: 200, width: 200),
                const Text(
                  'Loading...',
                  style: TextStyle(color: Colors.black45),
                )
              ],
            )),
          );
        }
        return DecoratedBox(
          decoration: const BoxDecoration(color: Colors.white),
          child: SafeArea(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Lottie.asset('assets/back.json',
                      fit: BoxFit.cover,
                      frameRate: FrameRate.max,
                      alignment: Alignment.topCenter),
                ),
                Scaffold(
                  backgroundColor: Colors.transparent,
                  body: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.only(bottom: 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Hi Sanjeev!',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: kGreenColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 28,
                                    backgroundColor:
                                        kGreenColor.withOpacity(0.5),
                                  ),
                                  ClipOval(
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          'https://avatars.githubusercontent.com/u/59445273?v=4',
                                      height: 50,
                                      width: 50,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'Discover',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.7)),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 50,
                          margin: const EdgeInsets.symmetric(horizontal: 20)
                              .copyWith(bottom: 20),
                          decoration: BoxDecoration(
                              boxShadow: [
                                const BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 10,
                                    spreadRadius: 0.5)
                              ],
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.search,
                                  color: kGreenColor,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'Search For Places',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                const Spacer(),
                                const VerticalDivider(
                                  indent: 10,
                                  endIndent: 10,
                                ),
                                SvgPicture.asset(
                                  'assets/settings.svg',
                                  height: 20,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          ),
                        ),
                        LimitedBox(
                          maxHeight: 150,
                          child: ListView.builder(
                            padding: const EdgeInsets.only(right: 20),
                            itemCount: kCountries.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.only(
                                    top: 10, bottom: 10, left: 20),
                                width: 110,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    const BoxShadow(
                                        color: Colors.black12,
                                        spreadRadius: 0.5,
                                        blurRadius: 10)
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                        backgroundColor:
                                            kGreenColor.withOpacity(0.1),
                                        child: Flag(
                                          kCountries[index],
                                          height: 15,
                                        )),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      kCountryNames[index],
                                      style: const TextStyle(
                                          color: Colors.black87,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Popular Destinations',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.7)),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  const Text(
                                    'See All',
                                    style: TextStyle(
                                        color: kGreenColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 10,
                                    color: kGreenColor,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        LimitedBox(
                          maxHeight: 260,
                          child: ListView.builder(
                            padding: const EdgeInsets.only(right: 20),
                            itemCount: state.places.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return PlaceWidget(
                                place: state.places[index],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 20)
                      .copyWith(bottom: 12.5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 20,
                            spreadRadius: 1)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                            top: 6, bottom: 8, right: 8, left: 8),
                        decoration: BoxDecoration(
                            color: kGreenColor, shape: BoxShape.circle),
                        child: Icon(
                          FontAwesomeIcons.globeAmericas,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 15,
                        child: Center(
                          child: Icon(
                            FontAwesomeIcons.map,
                            color: Colors.black54,
                            size: 18,
                          ),
                        ),
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25,
                            child: Center(
                              child: Icon(
                                FontAwesomeIcons.heart,
                                color: Colors.black54,
                                size: 18,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 15,
                            right: 12,
                            child: AnimatedCrossFade(
                              crossFadeState: state.favCount == 0
                                  ? CrossFadeState.showFirst
                                  : CrossFadeState.showSecond,
                              duration: const Duration(milliseconds: 600),
                              firstChild: const SizedBox.shrink(),
                              secondChild: Container(
                                height: 10,
                                alignment: Alignment.center,
                                width: 10,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Text(
                                  state.favCount.toString(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 5),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: Center(
                          child: Icon(
                            FontAwesomeIcons.amazon,
                            color: Colors.black54,
                            size: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
