import '../database.dart';

class NewmoviesTable extends SupabaseTable<NewmoviesRow> {
  @override
  String get tableName => 'newmovies';

  @override
  NewmoviesRow createRow(Map<String, dynamic> data) => NewmoviesRow(data);
}

class NewmoviesRow extends SupabaseDataRow {
  NewmoviesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NewmoviesTable();

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String? get year => getField<String>('year');
  set year(String? value) => setField<String>('year', value);

  double? get rating => getField<double>('rating');
  set rating(double? value) => setField<double>('rating', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);
}
