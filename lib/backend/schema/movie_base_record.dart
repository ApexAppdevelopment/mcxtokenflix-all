import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'movie_base_record.g.dart';

abstract class MovieBaseRecord
    implements Built<MovieBaseRecord, MovieBaseRecordBuilder> {
  static Serializer<MovieBaseRecord> get serializer =>
      _$movieBaseRecordSerializer;

  String? get fullmovie;

  String? get title;

  @BuiltValueField(wireName: 'Trailer')
  String? get trailer;

  String? get poster;

  String? get description;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MovieBaseRecordBuilder builder) => builder
    ..fullmovie = ''
    ..title = ''
    ..trailer = ''
    ..poster = ''
    ..description = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('movie_base');

  static Stream<MovieBaseRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MovieBaseRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MovieBaseRecord._();
  factory MovieBaseRecord([void Function(MovieBaseRecordBuilder) updates]) =
      _$MovieBaseRecord;

  static MovieBaseRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMovieBaseRecordData({
  String? fullmovie,
  String? title,
  String? trailer,
  String? poster,
  String? description,
}) {
  final firestoreData = serializers.toFirestore(
    MovieBaseRecord.serializer,
    MovieBaseRecord(
      (m) => m
        ..fullmovie = fullmovie
        ..title = title
        ..trailer = trailer
        ..poster = poster
        ..description = description,
    ),
  );

  return firestoreData;
}
