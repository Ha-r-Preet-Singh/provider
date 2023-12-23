


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_intro_46/provider/count_list_provider.dart';

class CountList extends StatefulWidget {
  const CountList({super.key});

  @override
  State<CountList> createState() => _CountListState();
}

class _CountListState extends State<CountList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Consumer<CountListProvider>(
        builder: (_, provider, ___) {
          var arrData = provider.noteData;
          return ListView.builder(
            itemCount: arrData.length,
            itemBuilder: (context, index) {
            return  InkWell(
              onTap: (){
                provider.updateData(arrData[index][{"Hello":"hjagdjada"}], index);
              },
              child: ListTile(
                leading: Text("${index+1}"),
                title: Text(arrData[index]["title"]),
                subtitle: Text(arrData[index]["desc"]),
                trailing: InkWell(
                  onTap: (){
                    provider.deleteData(index);
                  },
                    child: Icon(Icons.delete,color: Colors.red,)),
              ),
            );
          },);
        },
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.read<CountListProvider>().addData({
            "title":"New Note",
            "desc":"About Provider",
          });
        },
        child: Icon(Icons.add),
      ),


    );
  }
}
