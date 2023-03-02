import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'transactions_record.g.dart';

abstract class TransactionsRecord
    implements Built<TransactionsRecord, TransactionsRecordBuilder> {
  static Serializer<TransactionsRecord> get serializer =>
      _$transactionsRecordSerializer;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  double? get amount;

  DateTime? get dateSpent;

  String? get status;

  int? get send;

  int? get recieved;

  String? get walletAddress;

  @BuiltValueField(wireName: 'user_id')
  DocumentReference? get userId;

  String? get iconimage;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TransactionsRecordBuilder builder) => builder
    ..name = ''
    ..amount = 0.0
    ..status = ''
    ..send = 0
    ..recieved = 0
    ..walletAddress = ''
    ..iconimage = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transactions');

  static Stream<TransactionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TransactionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TransactionsRecord._();
  factory TransactionsRecord(
          [void Function(TransactionsRecordBuilder) updates]) =
      _$TransactionsRecord;

  static TransactionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTransactionsRecordData({
  String? name,
  double? amount,
  DateTime? dateSpent,
  String? status,
  int? send,
  int? recieved,
  String? walletAddress,
  DocumentReference? userId,
  String? iconimage,
}) {
  final firestoreData = serializers.toFirestore(
    TransactionsRecord.serializer,
    TransactionsRecord(
      (t) => t
        ..name = name
        ..amount = amount
        ..dateSpent = dateSpent
        ..status = status
        ..send = send
        ..recieved = recieved
        ..walletAddress = walletAddress
        ..userId = userId
        ..iconimage = iconimage,
    ),
  );

  return firestoreData;
}
