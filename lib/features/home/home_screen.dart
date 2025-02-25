import 'package:flutter/material.dart';
import 'package:matule_v2/features/home/home_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // Загружаем данные при инициализации экрана
    Provider.of<HomeModel>(context, listen: false).fetchCategory();
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Категории'),
      ),
      body: model.isLoading
          ? Center(child: CircularProgressIndicator())
          : model.listCategory.isEmpty
              ? Center(child: Text('Нет данных'))
              : ListView.builder(
                  itemCount: model.listCategory.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final category = model.listCategory[index];
                    return ListTile(
                      title: Text(category["title"] ?? 'Без названия'),
                    );
                  },
                ),
    );
  }
}
