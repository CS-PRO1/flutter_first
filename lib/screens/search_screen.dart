import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/components.dart';
import 'package:flutter_application_1/Services/Bloc%20Service/cubit.dart';
import 'package:flutter_application_1/Services/Bloc%20Service/states.dart';
//import 'package:flutter_application_1/webview_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => NewsCubit(),
        child: BlocConsumer<NewsCubit, AppStates>(
          listener: (context, state) {},
          builder: (context, state) {
            var newsmodel = NewsCubit().get(context).newsModel;
            return Scaffold(
              appBar: AppBar(
                title: Text('Search'),
                centerTitle: true,
              ),
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        NewsCubit().get(context).getSearch(value);
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search_rounded),
                          hintText: 'Search...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          )),
                    ),
                    SizedBox(height: 5),
                    if (state is SearchLoadingState) LinearProgressIndicator(),
                    if (state is SearchResultSuccessState)
                      Expanded(
                          child: SizedBox(
                        child: ListView.separated(
                            shrinkWrap: true,
                            itemBuilder: (context, index) => buildSearch(
                                newsmodel?.articles[index], context),
                            separatorBuilder: (context, index) =>
                                SizedBox(height: 5),
                            itemCount: newsmodel!.articles.length),
                      ))
                  ],
                ),
              ),
            );
          },
        ));
  }

  buildSearch(model, context) {
    return InkWell(
      onTap: () {
        // Navigator.of(context).push(MaterialPageRoute(
        //   builder: (context) => WebviewScreen(model.url),
        // ));
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Image.network(
              '${model.urlToImage}',
              height: 120,
              width: 150,
              errorBuilder: (context, error, stackTrace) =>
                  Image.asset('images/fallback/business.jpg'),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Text('${model.title}',
                  style: Theme.of(context).textTheme.headline6
                  //style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
            )
          ],
        ),
      ),
    );
  }
}
