import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
part 'lemma.g.dart';

@HiveType(typeId: 0)
@JsonSerializable()
class Lemma {
  @HiveField(0)
  @JsonKey(fromJson: toNull)
  final String lemma;
  @HiveField(1)
  @JsonKey(fromJson: toNull)
  final String synonym;
  @HiveField(2)
  @JsonKey(fromJson: toNull)
  final String antonym;
  @HiveField(3)
  @JsonKey(fromJson: toNull)
  final String description;
  @HiveField(4)
  @JsonKey(fromJson: toNull)
  final String meaning;
  @HiveField(5)
  @JsonKey(fromJson: toNull)
  final String examples;
  @HiveField(6)
  @JsonKey(fromJson: toNull)
  final String annotation;
  @HiveField(7)
  @JsonKey(defaultValue: false)
  final bool isFav;
  Lemma({
    this.lemma,
    this.synonym,
    this.antonym,
    this.description,
    this.meaning,
    this.examples,
    this.annotation,
    this.isFav,
  });
  factory Lemma.fromJson(Map<String, dynamic> json) => _$LemmaFromJson(
        json,
      );
  static toNull(String str) => str != null
      ? str.isEmpty
          ? null
          : str
      : null;
  Map<String, dynamic> toJson() => _$LemmaToJson(this);
}
