import 'package:equatable/equatable.dart';

class Tour extends Equatable {
  final String date;
  final String desc;
  final int distance;
  final String img;
  final String name;

  const Tour({
    required this.date,
    required this.desc,
    required this.distance,
    required this.img,
    required this.name,
  });

  @override
  List<Object?> get props => [
        date,
        desc,
        distance,
        img,
        name,
      ];
}
