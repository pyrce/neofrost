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
    Dessert(nom: 'Fraisier', image: "assets/images/gateau-de-mariage.png", type: 'Cake'),
    Dessert(nom: 'Opéra', image: "assets/images/gateau-de-mariage.png", type: 'Cake'),
    Dessert(nom: 'vanilla ice cream', image: "assets/images/cornet-de-glace.png", type: 'ice cream'),
    Dessert(nom: 'Cookie au chocolat', image: "assets/images/biscuits.png", type: 'Biscuits'),
    Dessert(nom: 'Brownie chocolat noir', image: "assets/images/creme-glacee.png", type: 'Chocolate'),
    Dessert(nom: 'citrus tarte', image: "assets/images/gateau-de-mariage.png", type: 'Cake'),
    Dessert(nom: 'strawberry ice cream', image: "assets/images/creme-glacee.png", type: 'ice cream'),
    Dessert(nom: 'Sablé breton', image: "assets/images/biscuits.png", type: 'Biscuits'),
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
    return Scaffold(
        appBar: AppBar(title:  Text('Neofrost',
            style:TextStyle(fontSize:30,color:Color(0xFFE0E0E0))),toolbarHeight: 100,backgroundColor:Color(0x0A0A0A)),
        body:Column(
      children: [
      Material(child:  TabBar(
          controller: _tabController,
          isScrollable: true,



        indicator: BoxDecoration(
          color: Color(0xFFFF00FF),
         // borderRadius: BorderRadius.circular(10),
        ),
        unselectedLabelColor:Color(0xFF1E1E1E),

            labelColor :Color(0xFF1E1E1E),
        overlayColor: MaterialStateProperty.all(Colors.white),
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 0.0,
          tabs: categories.map((c) => Tab(text: c)).toList(),
        )),
        SizedBox(
          height: MediaQuery.of(context).size.height-200, // Ajuste la hauteur selon tes besoins
          child: TabBarView(
            controller: _tabController,

            children: categories.map((category) {
              final desserts = getFilteredDesserts(category);
              return ListView.separated(
                itemCount: desserts.length,
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                itemBuilder: (context, index) {
                  final d = desserts[index];
                  return    ListTile(
                    leading:    Container(width:70, child:Image.asset(d.image)),
                    title: Text(d.nom,style:TextStyle(fontSize:20,color:Color(0xFF00FFFF)) ) ,
                    subtitle: Text(d.type,style:TextStyle(fontSize:20,color:Color(0xFFE0E0E0))),
                  );
                },
              );
            }).toList(),
          ),
        ),
      ],
    ));
  }
}
