import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseFetch {
  final supabase = Supabase.instance.client;

  Future<List<Map<String, dynamic>>> fetchCategory() async {
    final data = await supabase.from('category').select();
    return data;
  }
}
