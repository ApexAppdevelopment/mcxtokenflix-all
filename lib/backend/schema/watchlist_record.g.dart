// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watchlist_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WatchlistRecord> _$watchlistRecordSerializer =
    new _$WatchlistRecordSerializer();

class _$WatchlistRecordSerializer
    implements StructuredSerializer<WatchlistRecord> {
  @override
  final Iterable<Type> types = const [WatchlistRecord, _$WatchlistRecord];
  @override
  final String wireName = 'WatchlistRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, WatchlistRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.movietitle;
    if (value != null) {
      result
        ..add('movietitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.movielink;
    if (value != null) {
      result
        ..add('movielink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.movieposter;
    if (value != null) {
      result
        ..add('movieposter')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdOn;
    if (value != null) {
      result
        ..add('created_on')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  WatchlistRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WatchlistRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'movietitle':
          result.movietitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'movielink':
          result.movielink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'movieposter':
          result.movieposter = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_on':
          result.createdOn = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$WatchlistRecord extends WatchlistRecord {
  @override
  final String? movietitle;
  @override
  final String? movielink;
  @override
  final String? movieposter;
  @override
  final DateTime? createdOn;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$WatchlistRecord([void Function(WatchlistRecordBuilder)? updates]) =>
      (new WatchlistRecordBuilder()..update(updates))._build();

  _$WatchlistRecord._(
      {this.movietitle,
      this.movielink,
      this.movieposter,
      this.createdOn,
      this.ffRef})
      : super._();

  @override
  WatchlistRecord rebuild(void Function(WatchlistRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WatchlistRecordBuilder toBuilder() =>
      new WatchlistRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WatchlistRecord &&
        movietitle == other.movietitle &&
        movielink == other.movielink &&
        movieposter == other.movieposter &&
        createdOn == other.createdOn &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, movietitle.hashCode), movielink.hashCode),
                movieposter.hashCode),
            createdOn.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WatchlistRecord')
          ..add('movietitle', movietitle)
          ..add('movielink', movielink)
          ..add('movieposter', movieposter)
          ..add('createdOn', createdOn)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class WatchlistRecordBuilder
    implements Builder<WatchlistRecord, WatchlistRecordBuilder> {
  _$WatchlistRecord? _$v;

  String? _movietitle;
  String? get movietitle => _$this._movietitle;
  set movietitle(String? movietitle) => _$this._movietitle = movietitle;

  String? _movielink;
  String? get movielink => _$this._movielink;
  set movielink(String? movielink) => _$this._movielink = movielink;

  String? _movieposter;
  String? get movieposter => _$this._movieposter;
  set movieposter(String? movieposter) => _$this._movieposter = movieposter;

  DateTime? _createdOn;
  DateTime? get createdOn => _$this._createdOn;
  set createdOn(DateTime? createdOn) => _$this._createdOn = createdOn;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  WatchlistRecordBuilder() {
    WatchlistRecord._initializeBuilder(this);
  }

  WatchlistRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _movietitle = $v.movietitle;
      _movielink = $v.movielink;
      _movieposter = $v.movieposter;
      _createdOn = $v.createdOn;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WatchlistRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WatchlistRecord;
  }

  @override
  void update(void Function(WatchlistRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WatchlistRecord build() => _build();

  _$WatchlistRecord _build() {
    final _$result = _$v ??
        new _$WatchlistRecord._(
            movietitle: movietitle,
            movielink: movielink,
            movieposter: movieposter,
            createdOn: createdOn,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
