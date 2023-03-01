import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'watchlist_record.g.dart';

abstract class WatchlistRecord
    implements Built<WatchlistRecord, WatchlistRecordBuilder> {
  static Serializer<WatchlistRecord> get serializer =>
      _$watchlistRecordSerializer;

  String? get movietitle;

  String? get movielink;

  String? get movieposter;

  @BuiltValueField(wireName: 'created_on')
  DateTime? get createdOn;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(WatchlistRecordBuilder builder) => builder
    ..movietitle = ''
    ..movielink = ''
    ..movieposter = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('watchlist');

  static Stream<WatchlistRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<WatchlistRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  WatchlistRecord._();
  factory WatchlistRecord([void Function(WatchlistRecordBuilder) updates]) =
      _$WatchlistRecord;

  static WatchlistRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createWatchlistRecordData({
  String? movietitle,
  String? movielink,
  String? movieposter,
  DateTime? createdOn,
}) {
  final firestoreData = serializers.toFirestore(
    WatchlistRecord.serializer,
    WatchlistRecord(
      (w) => w
        ..movietitle = movietitle
        ..movielink = movielink
        ..movieposter = movieposter
        ..createdOn = createdOn,
    ),
  );

  return firestoreData;
}
