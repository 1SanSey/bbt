// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_book_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CartBookModelAdapter extends TypeAdapter<CartBookModel> {
  @override
  final int typeId = 0;

  @override
  CartBookModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CartBookModel(
      name: fields[0] as String,
      price: fields[1] as int,
      quantity: fields[3] as int,
      image: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CartBookModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.price)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartBookModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
