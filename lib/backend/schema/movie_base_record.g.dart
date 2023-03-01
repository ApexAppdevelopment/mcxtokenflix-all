// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_base_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MovieBaseRecord> _$movieBaseRecordSerializer =
    new _$MovieBaseRecordSerializer();

class _$MovieBaseRecordSerializer
    implements StructuredSerializer<MovieBaseRecord> {
  @override
  final Iterable<Type> types = const [MovieBaseRecord, _$MovieBaseRecord];
  @override
  final String wireName = 'MovieBaseRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MovieBaseRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.fullmovie;
    if (value != null) {
      result
        ..add('fullmovie')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.trailer;
    if (value != null) {
      result
        ..add('Trailer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.poster;
    if (value != null) {
      result
        ..add('poster')
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
  MovieBaseRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieBaseRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'fullmovie':
          result.fullmovie = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Trailer':
          result.trailer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'poster':
          result.poster = serializers.deserialize(value,
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

class _$MovieBaseRecord extends MovieBaseRecord {
  @override
  final String? fullmovie;
  @override
  final String? title;
  @override
  final String? trailer;
  @override
  final String? poster;
  @override
  final String? description;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MovieBaseRecord([void Function(MovieBaseRecordBuilder)? updates]) =>
      (new MovieBaseRecordBuilder()..update(updates))._build();

  _$MovieBaseRecord._(
      {this.fullmovie,
      this.title,
      this.trailer,
      this.poster,
      this.description,
      this.ffRef})
      : super._();

  @override
  MovieBaseRecord rebuild(void Function(MovieBaseRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieBaseRecordBuilder toBuilder() =>
      new MovieBaseRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieBaseRecord &&
        fullmovie == other.fullmovie &&
        title == other.title &&
        trailer == other.trailer &&
        poster == other.poster &&
        description == other.description &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, fullmovie.hashCode), title.hashCode),
                    trailer.hashCode),
                poster.hashCode),
            description.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MovieBaseRecord')
          ..add('fullmovie', fullmovie)
          ..add('title', title)
          ..add('trailer', trailer)
          ..add('poster', poster)
          ..add('description', description)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MovieBaseRecordBuilder
    implements Builder<MovieBaseRecord, MovieBaseRecordBuilder> {
  _$MovieBaseRecord? _$v;

  String? _fullmovie;
  String? get fullmovie => _$this._fullmovie;
  set fullmovie(String? fullmovie) => _$this._fullmovie = fullmovie;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _trailer;
  String? get trailer => _$this._trailer;
  set trailer(String? trailer) => _$this._trailer = trailer;

  String? _poster;
  String? get poster => _$this._poster;
  set poster(String? poster) => _$this._poster = poster;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MovieBaseRecordBuilder() {
    MovieBaseRecord._initializeBuilder(this);
  }

  MovieBaseRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fullmovie = $v.fullmovie;
      _title = $v.title;
      _trailer = $v.trailer;
      _poster = $v.poster;
      _description = $v.description;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieBaseRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MovieBaseRecord;
  }

  @override
  void update(void Function(MovieBaseRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovieBaseRecord build() => _build();

  _$MovieBaseRecord _build() {
    final _$result = _$v ??
        new _$MovieBaseRecord._(
            fullmovie: fullmovie,
            title: title,
            trailer: trailer,
            poster: poster,
            description: description,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
