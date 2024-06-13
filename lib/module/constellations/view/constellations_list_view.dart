import 'package:astrogeek/module/constellations/view/constellations_details.dart';
import 'package:astrogeek/utils/common_widgets.dart';
import 'package:astrogeek/utils/data.dart';
import 'package:astrogeek/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConstellationListViewUI extends StatefulWidget {
  const ConstellationListViewUI({super.key});

  @override
  State<ConstellationListViewUI> createState() =>
      _ConstellationListViewUIState();
}

class _ConstellationListViewUIState extends State<ConstellationListViewUI> {
  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  final TextEditingController searchController = TextEditingController();
  List<Constellations> filteredList = [];
  void filterSearchResults(String query) {
    List<Constellations> dummySearchList = [];
    dummySearchList.addAll(constellationList);
    if (query.isNotEmpty) {
      dummySearchList = dummySearchList
          .where(
              
              (item) => item.combine.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    setState(() {
      filteredList.clear();
      filteredList.addAll(dummySearchList);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const AppBarTitle(),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: const CommonBackButton()),
      extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(
            20, MediaQuery.of(context).size.height * 0.13, 20, 20),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetConstants.homebg), fit: BoxFit.fill)),
        child: Column(
          children: [
            SizedBox(
                width: double.maxFinite,
                child: Text('Star \nConstellations',
                    textAlign: TextAlign.start, style: primaryTextStyle(30))),
            const SizedBox(height: 30),
            SizedBox(
              width: double.maxFinite,
              child: TextField(
                controller: searchController,
                focusNode: focusNode,
                style: primaryTextStyle(16),
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    label: Text('Search', style: primaryTextStyle(16)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2)),
                    constraints: const BoxConstraints(maxHeight: 50)),
                onChanged: (value) {
                  setState(() {
                    filterSearchResults(value);
                  });
                },
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
                child: filteredList.isEmpty
                    ? searchController.text == ""
                      ? ListView.builder(
                        itemCount: constellationList.length,
                        itemBuilder: (context, index) {
                          return ListItem(
                              constellation: constellationList[index]);
                        })
                      : SizedBox(
                        child: Center(
                          child: Text("No results found!", style: primaryTextStyle(14)),
                        ))
                    : ListView.builder(
                        itemCount: filteredList.length,
                        itemBuilder: (context, index) {
                          return ListItem(constellation: filteredList[index]);
                        }))
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.fromLTRB(
            0,
            0,
            MediaQuery.of(context).size.width * 0.1,
            MediaQuery.of(context).size.width * 0.1),
        child: InkWell(
          onTap: () {
            setState(() {
              focusNode.requestFocus();
            });
          },
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(12)),
            child: const Icon(Icons.search, color: Colors.white, size: 30),
          ),
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final Constellations constellation;
  const ListItem({super.key, required this.constellation});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(RouteNames.constellationDetails,
            arguments: ConstellationDetailsUI(constellation: constellation));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Text(constellation.name,
                textAlign: TextAlign.start, style: primaryTextStyle(20)),
          ),
          const Divider(height: 30, thickness: 1)
        ],
      ),
    );
  }
}
