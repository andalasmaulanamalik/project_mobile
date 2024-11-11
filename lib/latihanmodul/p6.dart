import 'package:flutter/material.dart';

class Pertemuan6 extends StatelessWidget {
  const Pertemuan6({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pembuatan List View'),
          bottom: TabBar(tabs: [
            Tab(
              text: 'ListView',
            ),
            Tab(
              text: 'ListView.Builder',
            ),
            Tab(
              text: 'ListView.Separated',
            ),
          ]),
        ),
        body: TabBarView(children: [
          ContohListView(),
          ContohListViewBuilder(),
          ContohListViewSeparated(),
        ]),
      ),
    );
  }
}

class ContohListView extends StatelessWidget {
  final List<int> numberLIst = [1, 2, 3, 4, 5, 6, 7];
  ContohListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: numberLIst.map((int number) {
        return Container(
          height: 250,
          decoration: BoxDecoration(
              color: Colors.white, border: Border.all(color: Colors.black)),
          child: Center(
            child: Text(
              '$number',
              style: TextStyle(fontSize: 50),
            ),
          ),
        );
      }).toList(),
    );
  }
}

class ContohListViewBuilder extends StatelessWidget {
  final List<int> numberLIst = [1, 2, 3, 4, 5, 6, 7];
  ContohListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: numberLIst.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.grey, border: Border.all(color: Colors.black)),
            child: Center(
              child: Text(
                '${numberLIst[index]}',
                style: TextStyle(fontSize: 50),
              ),
            ),
          );
        });
  }
}

class ContohListViewSeparated extends StatelessWidget {
  final List<int> numberLIst = [1, 2, 3, 4, 5, 6, 7];
  ContohListViewSeparated({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 105, 36, 36),
                border: Border.all(color: Colors.black)),
            child: Center(
              child: Text(
                '${numberLIst[index]}',
                style: TextStyle(fontSize: 50),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            height: 15,
            color: Colors.green,
          );
        },
        itemCount: numberLIst.length);
  }
}
