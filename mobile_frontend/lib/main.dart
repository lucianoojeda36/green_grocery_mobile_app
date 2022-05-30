import 'package:flutter/material.dart';
import 'package:green_grocery/src/pages/home.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:green_grocery/src/pages/welcome.dart';

main() async {
  await initHiveForFlutter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final HttpLink httpLink = HttpLink(
    'http://192.168.0.27:3000/graphql',
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        link: httpLink,
        // The default store is the InMemoryStore, which does NOT persist to disk
        cache: GraphQLCache(store: HiveStore()),
      ),
    );
    return GraphQLProvider(
        client: client,
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: "/welcome",
          routes: {
            "/": (BuildContext context) => Home(),
            "/welcome": (BuildContext context) => Welcome(),
          },
        ));
  }
}
