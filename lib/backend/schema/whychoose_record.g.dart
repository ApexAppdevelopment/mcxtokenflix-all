// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'whychoose_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WhychooseRecord> _$whychooseRecordSerializer =
    new _$WhychooseRecordSerializer();

class _$WhychooseRecordSerializer
    implements StructuredSerializer<WhychooseRecord> {
  @override
  final Iterable<Type> types = const [WhychooseRecord, _$WhychooseRecord];
  @override
  final String wireName = 'WhychooseRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, WhychooseRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.number;
    if (value != null) {
      result
        ..add('number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
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
  WhychooseRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WhychooseRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
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

class _$WhychooseRecord extends WhychooseRecord {
  @override
  final int? number;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$WhychooseRecord([void Function(WhychooseRecordBuilder)? updates]) =>
      (new WhychooseRecordBuilder()..update(updates))._build();

  _$WhychooseRecord._({this.number, this.title, this.description, this.ffRef})
      : super._();

  @override
  WhychooseRecord rebuild(void Function(WhychooseRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WhychooseRecordBuilder toBuilder() =>
      new WhychooseRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WhychooseRecord &&
        number == other.number &&
        title == other.title &&
        description == other.description &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, number.hashCode), title.hashCode), description.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WhychooseRecord')
          ..add('number', number)
          ..add('title', title)
          ..add('description', description)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class WhychooseRecordBuilder
    implements Builder<WhychooseRecord, WhychooseRecordBuilder> {
  _$WhychooseRecord? _$v;

  int? _number;
  int? get number => _$this._number;
  set number(int? number) => _$this._number = number;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  WhychooseRecordBuilder() {
    WhychooseRecord._initializeBuilder(this);
  }

  WhychooseRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _number = $v.number;
      _title = $v.title;
      _description = $v.description;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WhychooseRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WhychooseRecord;
  }

  @override
  void update(void Function(WhychooseRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WhychooseRecord build() => _build();

  _$WhychooseRecord _build() {
    final _$result = _$v ??
        new _$WhychooseRecord._(
            number: number,
            title: title,
            description: description,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
