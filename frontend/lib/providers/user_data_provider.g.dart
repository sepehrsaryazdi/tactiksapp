// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_provider.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserDataProviderAdapter extends TypeAdapter<UserDataProvider> {
  @override
  final int typeId = 0;

  @override
  UserDataProvider read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserDataProvider()
      ..fullName = fields[0] as String
      ..mobileNumber = fields[1] as String
      ..email = fields[2] as String
      ..password = fields[3] as String
      ..deviceType = fields[4] as String
      ..deviceToken = fields[5] as String;
  }

  @override
  void write(BinaryWriter writer, UserDataProvider obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.fullName)
      ..writeByte(1)
      ..write(obj.mobileNumber)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.password)
      ..writeByte(4)
      ..write(obj.deviceType)
      ..writeByte(5)
      ..write(obj.deviceToken);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserDataProviderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
