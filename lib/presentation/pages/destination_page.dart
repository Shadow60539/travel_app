import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/core/colors.dart';
import 'package:travel_app/domain/entities/place.dart';
import 'package:travel_app/presentation/pages/booking_page.dart';
import 'package:travel_app/presentation/widgets/fade_animations.dart';
import 'package:travel_app/presentation/widgets/progress_painter.dart';
import 'package:travel_app/presentation/widgets/route_details_widget.dart';

class DestinationPage extends StatefulWidget {
  final Place? place;

  const DestinationPage({Key? key, this.place}) : super(key: key);
  @override
  _DestinationPageState createState() => _DestinationPageState();
}

class _DestinationPageState extends State<DestinationPage>
    with SingleTickerProviderStateMixin {
  final GlobalKey _key = GlobalKey();
  Size progressSize = const Size(10, 450);
  ScrollController? _controller;
  late AnimationController _animationController;

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.light),
    );
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 700))
      ..forward();
    _controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Hero(
              tag: widget.place!.imgUrl,
              child: CachedNetworkImage(
                imageUrl: widget.place!.imgUrl,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.5,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.2,
              child: const FadeFromUpAnimation(
                begin: 0,
                end: 1,
                drop: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Trip to',
                    style: TextStyle(
                        color: Colors.white54, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.22,
              child: FadeFromUpAnimation(
                begin: 0,
                end: 1,
                drop: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20)
                      .copyWith(top: 20),
                  child: Text(
                    widget.place!.name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.3,
              child: FadeFromUpAnimation(
                begin: 0,
                end: 1,
                drop: 0.9,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Row(
                    children: List.generate(
                      widget.place!.rating,
                      (index) => const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          FontAwesomeIcons.solidStar,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SlideTransition(
              position: Tween(begin: const Offset(0, 0.2), end: Offset.zero)
                  .animate(CurvedAnimation(
                      parent: _animationController,
                      curve: Curves.easeInOutBack)),
              child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.4),
                // height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        spreadRadius: 10),
                  ],
                ),
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  controller: _controller,
                  padding: const EdgeInsets.only(bottom: 195),
                  child: Stack(
                    children: [
                      Column(
                        key: _key,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Tour Details',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => BookingPage(
                                              place: widget.place)));
                                },
                                child: FadeFromUpAnimation(
                                  begin: 0,
                                  end: 1,
                                  drop: 1.0,
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundColor:
                                        kGreenColor.withOpacity(0.1),
                                    child: const Icon(
                                      Icons.add,
                                      color: kGreenColor,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: Text(
                              'Duration ≈ ${widget.place!.duration} Days',
                              style: const TextStyle(
                                color: Colors.black26,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Column(
                            children: List.generate(widget.place!.tours.length,
                                (index) {
                              return Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  FadeFromUpAnimation(
                                    begin: 0.0,
                                    end: 1.0,
                                    drop: 0.1,
                                    child: RouteWidget(
                                      name: widget.place!.tours[index].name,
                                      img: widget.place!.tours[index].img,
                                      desc: widget.place!.tours[index].desc,
                                      date: widget.place!.tours[index].date,
                                      km: widget.place!.tours[index].distance,
                                    ),
                                  ),
                                ],
                              );
                            }),
                          )
                        ],
                      ),
                      Positioned(
                          top: 97,
                          left: 20,
                          child: FadeFromUpAnimation(
                            begin: 0.5,
                            end: 1,
                            drop: 1.0,
                            child: CustomPaint(
                              size: progressSize,
                              painter: ProgressPainter(_controller),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const CircleAvatar(
                  backgroundColor: Colors.white24,
                  child: Icon(
                    Icons.arrow_back,
                    size: 18,
                    color: Colors.white54,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
