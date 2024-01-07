import 'package:flutter/material.dart';
import 'package:flutter_laboratory/common/dio.dart';
import 'package:flutter_laboratory/dio_lab/todos_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// JSON 사용하여 dioProvider 테스트

class HomeScreenDio extends ConsumerWidget {
  const HomeScreenDio({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DioTest'),
        elevation: 1.0,
      ),
      body: FutureBuilder<List<dynamic>>(
        future: getTodoList(ref),
        builder: (BuildContext _, snapshot) {

          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (BuildContext context, int index) {
              final pItem = TodoModel.fromJson(snapshot.data![index]);

              return ListTile(
                title: Text('#${pItem.id}'),
                subtitle: Text(pItem.title),
                trailing: Checkbox(
                  value: pItem.completed,
                  onChanged: (bool? value) {
                    print(value);
                  },
                ),
                onTap: () {},
              );
            },
          );
        },
      ),
    );
  }

  Future<List<dynamic>> getTodoList(WidgetRef ref) async {
    final dio = ref.watch(dioProvider);
    final res = await dio.get('https://jsonplaceholder.typicode.com/todos');

    return res.data;
  }
}
