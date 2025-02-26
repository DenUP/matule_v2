import 'package:flutter/foundation.dart';
import 'package:matule_v2/core/service/supabase_fetch.dart';

class HomeModel extends ChangeNotifier {
  List<Map<String, dynamic>> _listCategory = [];
  bool _isLoading = false;

  HomeModel();

  List<Map<String, dynamic>> get listCategory => _listCategory;
  bool get isLoading => _isLoading;
  final _supabaseFetch = SupabaseFetch();

  Future<void> fetchCategory() async {
    _isLoading = true;
    notifyListeners();

    try {
      print('Начало загрузки категорий');
      var result = await _supabaseFetch.fetchCategory();
      print('Результат загрузки: $result');

      if (result is List) {
        _listCategory =
            result.map((item) => item as Map<String, dynamic>).toList();
      } else {
        print('Неожиданный формат данных: ${result.runtimeType}');
        _listCategory = [];
      }

      print('Обработанные категории: $_listCategory');
    } catch (e) {
      print('Ошибка при загрузке данных: $e');
      print(StackTrace.current);
      _listCategory = [];
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
