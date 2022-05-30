import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Chat extends StatelessWidget {
  Chat({Key? key}) : super(key: key);

  String recipesRepositorie = r"""
  query Recipes {
    recipes{
  _id
  category
  description
  retweets
  ingredients
  calories
  likes
  comments
  score
  image 
  }
  }
""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('prueba query')),
      body: Query(
        options: QueryOptions(
          document: gql(
              recipesRepositorie), // this is the query string you just created
          // pollInterval: Duration(seconds: 10),
        ),
        // Just like in apollo refetch() could be used to manually trigger a refetch
        // while fetchMore() can be used for pagination purpose
        builder: (QueryResult result,
            {VoidCallback? refetch, FetchMore? fetchMore}) {
          if (result.hasException) {
            print('11111');
            return Text(result.exception.toString());
          }

          if (result.isLoading) {
            print('2222');
            return Text('Loading');
          }

          List? repositories = result.data?['recipes'];

          if (repositories == null) {
            print('3333');
            return Text('No repositories');
          }

          return ListView.builder(
              itemCount: repositories.length,
              itemBuilder: (context, index) {
                final repository = repositories[index];

                return Text(repository['description'] ?? '');
              });
        },
      ),
    );
  }
}
