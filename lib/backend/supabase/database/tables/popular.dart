import '../database.dart';

class PopularTable extends SupabaseTable<PopularRow> {
  @override
  String get tableName => 'popular';

  @override
  PopularRow createRow(Map<String, dynamic> data) => PopularRow(data);
}

class PopularRow extends SupabaseDataRow {
  PopularRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PopularTable();

  String? get resultsBackdropPath => getField<String>('results__backdrop_path');
  set resultsBackdropPath(String? value) =>
      setField<String>('results__backdrop_path', value);

  int? get resultsId => getField<int>('results__id');
  set resultsId(int? value) => setField<int>('results__id', value);

  String? get language => getField<String>('language');
  set language(String? value) => setField<String>('language', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get popularity => getField<String>('popularity');
  set popularity(String? value) => setField<String>('popularity', value);

  String? get posterPath => getField<String>('poster_path');
  set posterPath(String? value) => setField<String>('poster_path', value);

  String? get releaseDate => getField<String>('release_date');
  set releaseDate(String? value) => setField<String>('release_date', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get vote => getField<String>('vote');
  set vote(String? value) => setField<String>('vote', value);

  String? get movieUrl => getField<String>('movie_url');
  set movieUrl(String? value) => setField<String>('movie_url', value);

  String? get movieTrailer => getField<String>('movie_trailer');
  set movieTrailer(String? value) => setField<String>('movie_trailer', value);

  int get uid => getField<int>('uid')!;
  set uid(int value) => setField<int>('uid', value);
}
