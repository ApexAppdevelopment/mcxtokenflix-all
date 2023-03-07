import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  String? get refferralID;

  @BuiltValueField(wireName: 'SponsorID')
  String? get sponsorID;

  @BuiltValueField(wireName: 'WalletBalance')
  int? get walletBalance;

  String? get mcxtaddress;

  String? get city;

  String? get qrcode;

  String? get reflink;

  DocumentReference? get allrefferrals;

  bool? get isauthenticated;

  int? get notifcount;

  String? get paymentwallet;

  String? get walletaddressadded;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..refferralID = ''
    ..sponsorID = ''
    ..walletBalance = 0
    ..mcxtaddress = ''
    ..city = ''
    ..qrcode = ''
    ..reflink = ''
    ..isauthenticated = false
    ..notifcount = 0
    ..paymentwallet = ''
    ..walletaddressadded = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? refferralID,
  String? sponsorID,
  int? walletBalance,
  String? mcxtaddress,
  String? city,
  String? qrcode,
  String? reflink,
  DocumentReference? allrefferrals,
  bool? isauthenticated,
  int? notifcount,
  String? paymentwallet,
  String? walletaddressadded,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..refferralID = refferralID
        ..sponsorID = sponsorID
        ..walletBalance = walletBalance
        ..mcxtaddress = mcxtaddress
        ..city = city
        ..qrcode = qrcode
        ..reflink = reflink
        ..allrefferrals = allrefferrals
        ..isauthenticated = isauthenticated
        ..notifcount = notifcount
        ..paymentwallet = paymentwallet
        ..walletaddressadded = walletaddressadded,
    ),
  );

  return firestoreData;
}
