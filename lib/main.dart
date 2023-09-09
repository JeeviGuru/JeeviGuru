import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_api_data/store/post_store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Mobx',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PostStore store = PostStore();

  @override
  void initState() {
    store.getPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade200,
        title: const Text("Fetch data over API using MobX"),
      ),
      body: Observer(builder: (context) {
        return ListView.builder(
            itemCount: store.posts.length,
            padding: const EdgeInsets.all(10),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        store.posts.elementAt(index).title ?? 'No Data',
                        style: theme.textTheme.headline6,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        store.posts.elementAt(index).body ?? 'No Data',
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              );
            });
      }),
    );
  }
}
