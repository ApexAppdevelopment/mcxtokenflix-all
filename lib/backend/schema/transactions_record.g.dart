// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TransactionsRecord> _$transactionsRecordSerializer =
    new _$TransactionsRecordSerializer();

class _$TransactionsRecordSerializer
    implements StructuredSerializer<TransactionsRecord> {
  @override
  final Iterable<Type> types = const [TransactionsRecord, _$TransactionsRecord];
  @override
  final String wireName = 'TransactionsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TransactionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.dateSpent;
    if (value != null) {
      result
        ..add('dateSpent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.send;
    if (value != null) {
      result
        ..add('send')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.recieved;
    if (value != null) {
      result
        ..add('recieved')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.walletAddress;
    if (value != null) {
      result
        ..add('walletAddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.iconimage;
    if (value != null) {
      result
        ..add('iconimage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  TransactionsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TransactionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'dateSpent':
          result.dateSpent = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'send':
          result.send = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'recieved':
          result.recieved = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'walletAddress':
          result.walletAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'iconimage':
          result.iconimage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$TransactionsRecord extends TransactionsRecord {
  @override
  final String? name;
  @override
  final double? amount;
  @override
  final DateTime? dateSpent;
  @override
  final String? status;
  @override
  final int? send;
  @override
  final int? recieved;
  @override
  final String? walletAddress;
  @override
  final DocumentReference<Object?>? userId;
  @override
  final String? iconimage;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TransactionsRecord(
          [void Function(TransactionsRecordBuilder)? updates]) =>
      (new TransactionsRecordBuilder()..update(updates))._build();

  _$TransactionsRecord._(
      {this.name,
      this.amount,
      this.dateSpent,
      this.status,
      this.send,
      this.recieved,
      this.walletAddress,
      this.userId,
      this.iconimage,
      this.ffRef})
      : super._();

  @override
  TransactionsRecord rebuild(
          void Function(TransactionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionsRecordBuilder toBuilder() =>
      new TransactionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionsRecord &&
        name == other.name &&
        amount == other.amount &&
        dateSpent == other.dateSpent &&
        status == other.status &&
        send == other.send &&
        recieved == other.recieved &&
        walletAddress == other.walletAddress &&
        userId == other.userId &&
        iconimage == other.iconimage &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc($jc(0, name.hashCode), amount.hashCode),
                                    dateSpent.hashCode),
                                status.hashCode),
                            send.hashCode),
                        recieved.hashCode),
                    walletAddress.hashCode),
                userId.hashCode),
            iconimage.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TransactionsRecord')
          ..add('name', name)
          ..add('amount', amount)
          ..add('dateSpent', dateSpent)
          ..add('status', status)
          ..add('send', send)
          ..add('recieved', recieved)
          ..add('walletAddress', walletAddress)
          ..add('userId', userId)
          ..add('iconimage', iconimage)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TransactionsRecordBuilder
    implements Builder<TransactionsRecord, TransactionsRecordBuilder> {
  _$TransactionsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  DateTime? _dateSpent;
  DateTime? get dateSpent => _$this._dateSpent;
  set dateSpent(DateTime? dateSpent) => _$this._dateSpent = dateSpent;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  int? _send;
  int? get send => _$this._send;
  set send(int? send) => _$this._send = send;

  int? _recieved;
  int? get recieved => _$this._recieved;
  set recieved(int? recieved) => _$this._recieved = recieved;

  String? _walletAddress;
  String? get walletAddress => _$this._walletAddress;
  set walletAddress(String? walletAddress) =>
      _$this._walletAddress = walletAddress;

  DocumentReference<Object?>? _userId;
  DocumentReference<Object?>? get userId => _$this._userId;
  set userId(DocumentReference<Object?>? userId) => _$this._userId = userId;

  String? _iconimage;
  String? get iconimage => _$this._iconimage;
  set iconimage(String? iconimage) => _$this._iconimage = iconimage;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TransactionsRecordBuilder() {
    TransactionsRecord._initializeBuilder(this);
  }

  TransactionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _amount = $v.amount;
      _dateSpent = $v.dateSpent;
      _status = $v.status;
      _send = $v.send;
      _recieved = $v.recieved;
      _walletAddress = $v.walletAddress;
      _userId = $v.userId;
      _iconimage = $v.iconimage;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionsRecord;
  }

  @override
  void update(void Function(TransactionsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionsRecord build() => _build();

  _$TransactionsRecord _build() {
    final _$result = _$v ??
        new _$TransactionsRecord._(
            name: name,
            amount: amount,
            dateSpent: dateSpent,
            status: status,
            send: send,
            recieved: recieved,
            walletAddress: walletAddress,
            userId: userId,
            iconimage: iconimage,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
