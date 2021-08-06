import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/core/colors.dart';

class RouteWidget extends StatelessWidget {
  final String? date;
  final String? name;
  final String? desc;
  final String? img;
  final int? km;
  const RouteWidget({
    Key? key,
    this.date,
    this.name,
    this.desc,
    this.km,
    this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, bottom: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                date!,
                style: const TextStyle(
                  color: Colors.black26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CachedNetworkImage(
                      imageUrl: img!,
                      height: 90,
                      width: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        desc!.length > 35
                            ? '${desc!.substring(0, 32)}..'
                            : desc!,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(color: Colors.black45),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.near_me,
                            size: 15,
                            color: kGreenColor,
                          ),
                          Text(
                            '$km Km',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kGreenColor,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
