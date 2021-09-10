import 'package:hive/hive.dart';

part 'person.g.dart';

@HiveType(typeId: 1)
class Person {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final String cpf;

  @HiveField(2)
  final String renach;

  @HiveField(3)
  final String phone;

  @HiveField(4)
  late int leg;

  @HiveField(5)
  late int dir;

  @HiveField(6)
  late int pri;

  @HiveField(7)
  late int mec;

  @HiveField(8)
  late int mei;

   @HiveField(9)
  late int moto;

   @HiveField(10)
  late int carro;
  Person(
    {
    required this.name,
    required this.cpf,
    required this.renach,
    required this.phone,
    required this.leg,
    required this.dir,
    required this.pri,
    required this.mec,
    required this.mei,
    required this.moto,
    required this.carro,
  });
}