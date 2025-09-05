import 'package:flutter/material.dart';

class products  extends StatelessWidget{
  products({ this.nom,  this.image,  this.type});
   String? nom;
   String? image;
   String? type;

  final List<String> categories = [
    'Tout',
    'Gâteau',
    'Glace',
    'Biscuit',
    'Chocolat',
  ];

  final List<products> allDesserts = [
    products(nom: 'Fraisier', image: '🍰', type: 'Gâteau'),
    products(nom: 'Opéra', image: '🍰', type: 'Gâteau'),
    products(nom: 'Glace vanille', image: '🍦', type: 'Glace'),
    products(nom: 'Cookie au chocolat', image: '🍪', type: 'Biscuit'),
    products(nom: 'Brownie chocolat noir', image: '🍫', type: 'Chocolat'),
    products(nom: 'Tarte au citron', image: '🍰', type: 'Gâteau'),
    products(nom: 'Glace fraise', image: '🍦', type: 'Glace'),
    products(nom: 'Sablé breton', image: '🍪', type: 'Biscuit'),
    products(nom: 'Tablette de chocolat', image: '🍫', type: 'Chocolat'),
  ];
  List<products> getFilteredDesserts(String category) {
    if (category == 'Tout') {
      return allDesserts;
    } else {
      return allDesserts.where((d) => d.type == category).toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      //controller: _tabController,
      children: categories.map((category) {
        final desserts = getFilteredDesserts(category);
        return ListView.builder(
          itemCount: desserts.length,
          itemBuilder: (context, index) {
            final d = desserts[index];
            return ListTile(
              leading: Text(
                d.image,
                style: TextStyle(fontSize: 30),
              ),
              title: Text(d.nom),
              subtitle: Text(d.type),
            );
          },
        );
      }).toList(),
    );
  }

}



/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Filtrage de Desserts',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: DessertFilterPage(),
    );
  }
}*/



//class _DessertFilterPageState extends State<DessertFilterPage> with SingleTickerProviderStateMixin {
 // late TabController _tabController;

  /*final List<String> categories = [
    'Tout',
    'Gâteau',
    'Glace',
    'Biscuit',
    'Chocolat',
  ];

  final List<Dessert> allDesserts = [
    Dessert(nom: 'Fraisier', image: '🍰', type: 'Gâteau'),
    Dessert(nom: 'Opéra', image: '🍰', type: 'Gâteau'),
    Dessert(nom: 'Glace vanille', image: '🍦', type: 'Glace'),
    Dessert(nom: 'Cookie au chocolat', image: '🍪', type: 'Biscuit'),
    Dessert(nom: 'Brownie chocolat noir', image: '🍫', type: 'Chocolat'),
    Dessert(nom: 'Tarte au citron', image: '🍰', type: 'Gâteau'),
    Dessert(nom: 'Glace fraise', image: '🍦', type: 'Glace'),
    Dessert(nom: 'Sablé breton', image: '🍪', type: 'Biscuit'),
    Dessert(nom: 'Tablette de chocolat', image: '🍫', type: 'Chocolat'),
  ];
List<Dessert> getFilteredDesserts(String category) {
  if (category == 'Tout') {
    return allDesserts;
  } else {
    return allDesserts.where((d) => d.type == category).toList();
  }
}*/
  /*@override
  void initState() {
    super.initState();
    _tabController = TabController(length: categories.length, vsync: this);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Desserts'),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: categories.map((c) => Tab(text: c)).toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: categories.map((category) {
          final desserts = getFilteredDesserts(category);
          return ListView.builder(
            itemCount: desserts.length,
            itemBuilder: (context, index) {
              final d = desserts[index];
              return ListTile(
                leading: Text(
                  d.image,
                  style: TextStyle(fontSize: 30),
                ),
                title: Text(d.nom),
                subtitle: Text(d.type),
              );
            },
          );
        }).toList(),
      ),
    );
  }*/
//}
