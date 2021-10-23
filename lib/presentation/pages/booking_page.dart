import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/domain/entities/place.dart';
import 'package:travel_app/presentation/widgets/fade_animations.dart';
import 'package:travel_app/presentation/widgets/slide_widget.dart';

class BookingPage extends StatefulWidget {
  final Place? place;

  const BookingPage({Key? key, this.place}) : super(key: key);
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Hero(
              tag: widget.place!.imgUrl,
              child: CachedNetworkImage(
                imageUrl: widget.place!.imgUrl,
                fit: BoxFit.cover,
                // height: MediaQuery.of(context).size.height * 0.5,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FadeFromUpAnimation(
                  begin: 0,
                  end: 0.16,
                  drop: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20)
                        .copyWith(top: 10, bottom: 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(
                            FontAwesomeIcons.solidStar,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Text(
                          widget.place!.rating.toDouble().toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                FadeFromUpAnimation(
                  begin: 0,
                  end: 0.32,
                  drop: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      '${widget.place!.reviews} Reviews',
                      style: const TextStyle(
                        color: Colors.white54,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                FadeFromUpAnimation(
                  begin: 0,
                  end: 0.48,
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
                const SizedBox(
                  height: 10,
                ),
                FadeFromUpAnimation(
                  begin: 0,
                  end: 0.64,
                  drop: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      widget.place!.description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                      style: const TextStyle(
                        height: 1.5,
                        color: Colors.white54,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                FadeFromUpAnimation(
                  begin: 0,
                  end: 0.8,
                  drop: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'From',
                          style: TextStyle(
                            height: 1.5,
                            color: Colors.white54,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '\$${widget.place!.price}',
                          style: const TextStyle(
                            height: 1.5,
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ConfirmationSlider(
                    backgroundColor: Colors.transparent,
                    width: double.maxFinite,
                    onConfirmation: () {},
                    textStyle: const TextStyle(color: Colors.white),
                    height: 60,
                    foregroundColor: Colors.white12,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Center(
                    child: Text(
                  'More Details',
                  style: TextStyle(
                      color: Colors.white54, fontWeight: FontWeight.bold),
                )),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            Positioned(
              top: 30,
              left: 20,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const CircleAvatar(
                  backgroundColor: Colors.black12,
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
