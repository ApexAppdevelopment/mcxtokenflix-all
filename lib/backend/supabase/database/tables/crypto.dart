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

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get symbol => getField<String>('symbol');
  set symbol(String? value) => setField<String>('symbol', value);

  String? get price => getField<String>('price');
  set price(String? value) => setField<String>('price', value);
}
