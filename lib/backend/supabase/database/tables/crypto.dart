import '../database.dart';

class CryptoTable extends SupabaseTable<CryptoRow> {
  @override
  String get tableName => 'crypto';

  @override
  CryptoRow createRow(Map<String, dynamic> data) => CryptoRow(data);
}

class CryptoRow extends SupabaseDataRow {
  CryptoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CryptoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  String? get twFlexHref => getField<String>('tw-flex href');
  set twFlexHref(String? value) => setField<String>('tw-flex href', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get symbol => getField<String>('symbol');
  set symbol(String? value) => setField<String>('symbol', value);

  String? get noWrap => getField<String>('no-wrap');
  set noWrap(String? value) => setField<String>('no-wrap', value);

  String? get textDanger => getField<String>('text-danger');
  set textDanger(String? value) => setField<String>('text-danger', value);

  String? get textGreen => getField<String>('text-green');
  set textGreen(String? value) => setField<String>('text-green', value);

  String? get textDanger2 => getField<String>('text-danger 2');
  set textDanger2(String? value) => setField<String>('text-danger 2', value);

  String? get noWrap2 => getField<String>('no-wrap 2');
  set noWrap2(String? value) => setField<String>('no-wrap 2', value);

  String? get noWrap3 => getField<String>('no-wrap 3');
  set noWrap3(String? value) => setField<String>('no-wrap 3', value);

  String? get tdFdv => getField<String>('td-fdv');
  set tdFdv(String? value) => setField<String>('td-fdv', value);

  String? get twCursorPointerSrc => getField<String>('tw-cursor-pointer src');
  set twCursorPointerSrc(String? value) =>
      setField<String>('tw-cursor-pointer src', value);
}
