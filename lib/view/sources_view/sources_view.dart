import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uploading_images_to_firebase/utils/app_style/app_style.dart';
import 'package:uploading_images_to_firebase/view_model/controllers/news_sources_model_class/news_sources_model_class.dart';
import 'package:uploading_images_to_firebase/views/widgets/text_field_widget/text_field_widget.dart';


class SourcesView extends StatefulWidget {
  const SourcesView({super.key});

  @override
  State<SourcesView> createState() => _SourcesViewState();
}

class _SourcesViewState extends State<SourcesView> {
  List list = [];
  List filteredList = [];
  NewsSourcesController newsSourcesController =
      Get.put(NewsSourcesController());

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    list = await newsSourcesController.getSourceData();
    filteredList = List.from(list);
    setState(() {}); // Notify the framework that the state has changed
  }

  TextEditingController textEditingController = TextEditingController();

  void filterList(String category) {
    setState(() {
      if (category.isEmpty) {
        filteredList = List.from(list);
      } else {
        filteredList = list
            .where((item) =>
                item["category"].toLowerCase() == category.toLowerCase())
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFieldWidget(
              controller: textEditingController,
              height: 60,
              borderWidth: 2,
              width: double.infinity,
              borderRadius: 25,
              color: 0xff000000,
              hintText: "Search for sports, technology, business, general",
              onChanged: filterList,
            ),
            const SizedBox(
              height: 20,
            ),
            list.isEmpty
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: filteredList.length,
                      itemBuilder: (context, index) {
                        final String name = filteredList[index]["name"] ?? "";
                        final String description =
                            filteredList[index]["description"] ?? "";
                        final String country =
                            filteredList[index]["country"] ?? "";
                        final String category =
                            filteredList[index]["category"] ?? "";
                        final String url = filteredList[index]["url"] ?? "";
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: ClipRRect(
                            child: SizedBox(
                              height: 200,
                              width: double.infinity,
                              child: Card(
                                child: ListTile(
                                  title: Text(
                                    name,
                                    style: AppStyles.headlineMediumBlack,
                                  ),
                                  leading: SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(url),
                                    ),
                                  ),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                            text: "Source: ",
                                            style:
                                                AppStyles.headlineMediumBlack,
                                          ),
                                          TextSpan(
                                            text: category,
                                            style: AppStyles.regularBodyBlack,
                                          ),
                                        ]),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Expanded(
                                        child: SingleChildScrollView(
                                          child: Text(
                                            description,
                                            style: AppStyles.regularBodyBlack,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  trailing: Text(
                                    country,
                                    style: AppStyles.headlineMediumBlack,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
