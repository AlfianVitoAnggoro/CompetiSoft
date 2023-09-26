import 'package:flutter/material.dart';
import 'package:racecourse/home_page.dart';
import 'package:racecourse/model/collaborator.dart';

class CollaboratorPage extends StatefulWidget {
  const CollaboratorPage({super.key, required this.title});

  final String title;

  @override
  State<CollaboratorPage> createState() => _CollaboratorPageState();
}

class _CollaboratorPageState extends State<CollaboratorPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return CollaboratorList();
          } else if (constraints.maxWidth <= 800) {
            return CollaboratorGrid(gridCount: 2);
          } else if (constraints.maxWidth <= 1200) {
            return CollaboratorGrid(gridCount: 3);
          } else {
            return CollaboratorGrid(gridCount: 4);
          }
        },
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.brown,
              ),
              child: Center(
                child: Text(
                  'CompetiSoft',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              selected: _selectedIndex == 0,
              onTap: () {
                // Update the state of the app
                _onItemTapped(0);
                // Then close the drawer
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomePage(
                        title: "CompetiSoft",
                      );
                    },
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Collaborator'),
              selected: _selectedIndex == 1,
              onTap: () {
                // Update the state of the app
                _onItemTapped(1);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CollaboratorList extends StatelessWidget {
  const CollaboratorList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Collaborators collaborator = CollaboratorsList[index];
        return Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Image.asset(collaborator.imageAsset),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        collaborator.name,
                        style: const TextStyle(fontSize: 16.0),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(collaborator.email,
                          style: const TextStyle(fontSize: 14.0)),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        collaborator.numberTelp,
                        style: const TextStyle(fontSize: 14.0),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: collaborator.skills.map((skill) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 4.0),
                              child: ClipRRect(
                                child: Text(skill),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
      itemCount: CollaboratorsList.length,
    );
  }
}

class CollaboratorGrid extends StatelessWidget {
  final int gridCount;

  const CollaboratorGrid({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: GridView.count(
        crossAxisCount: gridCount,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: CollaboratorsList.map((collaborator) {
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Image.asset(
                    collaborator.imageAsset,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    collaborator.name,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                  child: Text(
                    collaborator.email,
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                  child: Text(
                    collaborator.numberTelp,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: collaborator.skills.map((skill) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                        child: ClipRRect(
                          child: Text(skill),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
