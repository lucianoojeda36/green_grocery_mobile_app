import 'package:flutter/material.dart';
import 'package:green_grocery/src/components/banner/banner.dart';
import 'package:green_grocery/src/components/chip_list.dart';
import 'package:green_grocery/src/components/list_card_product.dart';
import 'package:green_grocery/src/components/menu.dart';
import 'package:green_grocery/src/components/search_bar.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    String recipesRepositorie = r"""
  query Products {
  products{_id 
  image}
  }
 """;

    return Query(
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
          return Text(result.exception.toString());
        }

        if (result.isLoading) {
          return Text('Loading');
        }

        List? repositories = result.data?['products'];

        if (repositories == null) {
          return Text('No repositories');
        }

        return Column(
          children: [
            Menu(),
            SearchBar(),
            BannerList(),
            ChipList(),
            ListCardProduct(repositories),
          ],
        );
      },
    );
  }
}
