// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cryptolist_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CryptolistRecord> _$cryptolistRecordSerializer =
    new _$CryptolistRecordSerializer();

class _$CryptolistRecordSerializer
    implements StructuredSerializer<CryptolistRecord> {
  @override
  final Iterable<Type> types = const [CryptolistRecord, _$CryptolistRecord];
  @override
  final String wireName = 'CryptolistRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CryptolistRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  CryptolistRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CryptolistRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$CryptolistRecord extends CryptolistRecord {
  @override
  final String? name;
  @override
  final double? price;
  @override
  final int? quantity;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CryptolistRecord(
          [void Function(CryptolistRecordBuilder)? updates]) =>
      (new CryptolistRecordBuilder()..update(updates))._build();

  _$CryptolistRecord._({this.name, this.price, this.quantity, this.ffRef})
      : super._();

  @override
  CryptolistRecord rebuild(void Function(CryptolistRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CryptolistRecordBuilder toBuilder() =>
      new CryptolistRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CryptolistRecord &&
        name == other.name &&
        price == other.price &&
        quantity == other.quantity &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), price.hashCode), quantity.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CryptolistRecord')
          ..add('name', name)
          ..add('price', price)
          ..add('quantity', quantity)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CryptolistRecordBuilder
    implements Builder<CryptolistRecord, CryptolistRecordBuilder> {
  _$CryptolistRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CryptolistRecordBuilder() {
    CryptolistRecord._initializeBuilder(this);
  }

  CryptolistRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _price = $v.price;
      _quantity = $v.quantity;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CryptolistRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CryptolistRecord;
  }

  @override
  void update(void Function(CryptolistRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CryptolistRecord build() => _build();

  _$CryptolistRecord _build() {
    final _$result = _$v ??
        new _$CryptolistRecord._(
            name: name, price: price, quantity: quantity, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
