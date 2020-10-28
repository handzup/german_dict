// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lemma.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LemmaAdapter extends TypeAdapter<Lemma> {
  @override
  final int typeId = 0;

  @override
  Lemma read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Lemma(
      lemma: fields[0] as String,
      synonym: fields[1] as String,
      antonym: fields[2] as String,
      description: fields[3] as String,
      meaning: fields[4] as String,
      examples: fields[5] as String,
      annotation: fields[6] as String,
      isFav: fields[7] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Lemma obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.lemma)
      ..writeByte(1)
      ..write(obj.synonym)
      ..writeByte(2)
      ..write(obj.antonym)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.meaning)
      ..writeByte(5)
      ..write(obj.examples)
      ..writeByte(6)
      ..write(obj.annotation)
      ..writeByte(7)
      ..write(obj.isFav);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LemmaAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Lemma _$LemmaFromJson(Map<String, dynamic> json) {
  return Lemma(
    lemma: Lemma.toNull(json['lemma'] as String),
    synonym: Lemma.toNull(json['synonym'] as String),
    antonym: Lemma.toNull(json['antonym'] as String),
    description: Lemma.toNull(json['description'] as String),
    meaning: Lemma.toNull(json['meaning'] as String),
    examples: Lemma.toNull(json['examples'] as String),
    annotation: Lemma.toNull(json['annotation'] as String),
    isFav: json['isFav'] as bool ?? false,
  );
}

Map<String, dynamic> _$LemmaToJson(Lemma instance) => <String, dynamic>{
      'lemma': instance.lemma,
      'synonym': instance.synonym,
      'antonym': instance.antonym,
      'description': instance.description,
      'meaning': instance.meaning,
      'examples': instance.examples,
      'annotation': instance.annotation,
      'isFav': instance.isFav,
    };
