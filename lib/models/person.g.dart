// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PersonAdapter extends TypeAdapter<Person> {
  @override
  final int typeId = 1;

  @override
  Person read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Person(
      name: fields[0] as String,
      cpf: fields[1] as String,
      renach: fields[2] as String,
      phone: fields[3] as String,
      leg: fields[4],
      dir: fields[5],
      pri: fields[6],
      mec: fields[7],
      mei: fields[8],
      moto: fields[9],
      carro: fields[10]
    );
  }

  @override
  void write(BinaryWriter writer, Person obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.cpf)
      ..writeByte(2)
      ..write(obj.renach)
      ..writeByte(3)
      ..write(obj.phone)
      ..writeByte(4)
      ..write(obj.leg)
      ..writeByte(5)
      ..write(obj.dir)
      ..writeByte(6)
      ..write(obj.pri)
      ..writeByte(7)
      ..write(obj.mec)
      ..writeByte(8)
      ..write(obj.mei)
      ..writeByte(9)
      ..write(obj.moto)
      ..writeByte(10)
      ..write(obj.carro);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersonAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
