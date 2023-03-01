import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'whychoose_record.g.dart';

abstract class WhychooseRecord
    implements Built<WhychooseRecord, WhychooseRecordBuilder> {
  static Serializer<WhychooseRecord> get serializer =>
      _$whychooseRecordSerializer;

  int? get number;

  String? get title;

  String? get description;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(WhychooseRecordBuilder builder) => builder
    ..number = 0
    ..title = ''
    ..description = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('whychoose');

  static Stream<WhychooseRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<WhychooseRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  WhychooseRecord._();
  factory WhychooseRecord([void Function(WhychooseRecordBuilder) updates]) =
      _$WhychooseRecord;

  static WhychooseRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createWhychooseRecordData({
  int? number,
  String? title,
  String? description,
}) {
  final firestoreData = serializers.toFirestore(
    WhychooseRecord.serializer,
    WhychooseRecord(
      (w) => w
        ..number = number
        ..title = title
        ..description = description,
    ),
  );

  return firestoreData;
}
