// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourites_book_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavouritesBookModelAdapter extends TypeAdapter<FavouritesBookModel> {
  @override
  final int typeId = 1;

  @override
  FavouritesBookModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavouritesBookModel(
      name: fields[0] as String,
      price: fields[1] as int,
      image: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, FavouritesBookModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.price)
      ..writeByte(2)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavouritesBookModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
