import 'package:flutter/material.dart';

class Dessert {
  final String nom;
  final String image;
  final String type;

  Dessert({required this.nom, required this.image, required this.type});
}

class DessertTabFilter extends StatefulWidget {
  const DessertTabFilter({Key? key}) : super(key: key);

  @override
  State<DessertTabFilter> createState() => _DessertTabFilterState();
}

class _DessertTabFilterState extends State<DessertTabFilter> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<String> categories = [
    'Tout',
    'Cake',
    'Biscuits',
    'ice cream',
    'Chocolate',
  ];

  final List<Dessert> allDesserts = [
    Dessert(nom: 'Fraisier', image: "assets/images/creme-glacee.png", type: 'Cake'),
    Dessert(nom: 'Opéra', image: "assets/images/creme-glacee.png", type: 'Cake'),
    Dessert(nom: 'vanilla ice cream', image: "assets/images/creme-glacee.png", type: 'ice cream'),
    Dessert(nom: 'Cookie au chocolat', image: "assets/images/creme-glacee.png", type: 'Biscuits'),
    Dessert(nom: 'Brownie chocolat noir', image: "assets/images/creme-glacee.png", type: 'Chocolate'),
    Dessert(nom: 'citrus tarte', image: "assets/images/creme-glacee.png", type: 'Cake'),
    Dessert(nom: 'strawberry ice cream', image: "assets/images/creme-glacee.png", type: 'ice cream'),
    Dessert(nom: 'Sablé breton', image: "assets/images/creme-glacee.png", type: 'Biscuits'),
    Dessert(nom: 'Tablette de chocolat', image: "assets/images/creme-glacee.png", type: 'Chocolate'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: categories.length, vsync: this);
  }

  List<Dessert> getFilteredDesserts(String category) {
    if (category == 'Tout') {
      return allDesserts;
    } else {
      return allDesserts.where((d) => d.type == category).toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Material(child:  TabBar(
          controller: _tabController,
          isScrollable: true,
          labelColor: Theme.of(context).primaryColor,
          unselectedLabelColor: Color(0xE0E0E0),

        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
         color:Color(0x1E1E1E)
        ),
          tabs: categories.map((c) => Tab(text: c)).toList(),
        )),
        SizedBox(
          height: 400, // Ajuste la hauteur selon tes besoins
          child: TabBarView(
            controller: _tabController,

            children: categories.map((category) {
              final desserts = getFilteredDesserts(category);
              return ListView.builder(
                itemCount: desserts.length,
                itemBuilder: (context, index) {
                  final d = desserts[index];
                  return    Material(child: ListTile(
                    leading:    Container(width:40, child:Image.asset(d.image)),
                    title: Text(d.nom),
                    subtitle: Text(d.type),
                  ));
                },
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
