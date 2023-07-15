import 'package:flutter/material.dart';
import 'package:prueba2/src/pages/my_search_results.dart';
import 'package:prueba2/src/widgets/my_app_bar.dart';
import 'package:prueba2/src/widgets/my_search.dart';
import 'package:prueba2/src/utils/api_services_search_page.dart';

class SearchResults extends StatefulWidget {
  const SearchResults({Key? key}) : super(key: key);

  @override
  State<SearchResults> createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  bool isDarkMode = false;
  List<dynamic> searchResultsData = [];

  @override
  void initState() {
    super.initState();
    fetchDataFromAPI();
  }

  Future<void> fetchDataFromAPI() async {
    try {
      final apiServicesSearchPage = ApiServicesSearchPage();
      final data = await apiServicesSearchPage.fetchSearchResults();
      setState(() {
        searchResultsData = data;
      });
    } catch (e) {
      print('Error al obtener los resultados de búsqueda: $e');
    }
  }

  void handleSearchRequested(
      DateTime startDate, DateTime endDate, int selectedPeople) {
    // Lógica para realizar la búsqueda con los parámetros especificados
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        isDarkMode: isDarkMode,
        onDarkModeChanged: (value) {
          setState(() {
            isDarkMode = value;
          });
        },
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          MySearch(
            onSearchRequested: handleSearchRequested,
          ),
          const Divider(
            thickness: 1,
            color: Colors.black45,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: const Row(
              children: [
                Text("Inicio"),
                Icon(Icons.arrow_right),
                Text("Resultados de la búsqueda Cancun"),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 45,
                  width: 150,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF552B),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.filter_list,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Filtro",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              MySearchResults(
                onPageChanged: (index) {},
                isDarkMode: isDarkMode,
                onDarkModeChanged: (value) {
                  setState(() {
                    isDarkMode = value;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
