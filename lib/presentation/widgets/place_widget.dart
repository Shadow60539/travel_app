import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:travel_app/application/bloc/places_bloc.dart';
import 'package:travel_app/domain/entities/place.dart';
import 'package:travel_app/presentation/pages/destination_page.dart';

class PlaceWidget extends StatelessWidget {
  final Place? place;
  const PlaceWidget({
    Key? key,
    this.place,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DestinationPage(
                place: place,
              ),
            ));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
        width: 200,
        decoration: BoxDecoration(
          boxShadow: [
            const BoxShadow(
              color: Colors.black12,
              spreadRadius: 0.5,
              blurRadius: 10,
            ),
            const BoxShadow(
                color: Colors.white,
                spreadRadius: 0.5,
                blurRadius: 10,
                offset: Offset(0, -10)),
          ],
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          children: [
            DecoratedBox(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 0.5,
                      blurRadius: 10,
                      offset: Offset(0, 10))
                ],
              ),
              child: Hero(
                tag: place!.imgUrl,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: CachedNetworkImage(
                    alignment: Alignment.topCenter,
                    height: 150,
                    fit: BoxFit.cover,
                    imageUrl: place!.imgUrl,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(place!.name),
                  if (place!.isFav)
                    Lottie.asset('assets/heart.json',
                        height: 30, width: 30, repeat: false)
                  else
                    InkWell(
                      onTap: () {
                        BlocProvider.of<PlacesBloc>(context)
                            .add(PlacesEvent.markFavorite(place!.id));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          FontAwesomeIcons.heart,
                          size: 10,
                        ),
                      ),
                    )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                  children: List.generate(
                place!.rating,
                (index) => const Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.yellow,
                    size: 15,
                  ),
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
