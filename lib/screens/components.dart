import 'package:flutter/material.dart';
//import 'package:flutter_application_1/webview_screen.dart';

Widget buildNewsItem(model, context) {
  return Card(
    clipBehavior: Clip.antiAlias,
    elevation: 5,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: InkWell(
      onTap: () {
        // Navigator.of(context).push(MaterialPageRoute(
        //   builder: (context) => WebviewScreen(model.url),
        // ));
      },
      child: Column(
        children: [
          Image.network(
            '${model.urlToImage}',
            errorBuilder: (context, error, stackTrace) =>
                Image.asset('images/fallback/business.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('${model.title}',
                      style: Theme.of(context).textTheme.headline3),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child:
                            Text('${model.description}'.replaceAll('null', ''),
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                )),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '${model.publishedAt}'.substring(0, 10),
                        textAlign: TextAlign.right,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
