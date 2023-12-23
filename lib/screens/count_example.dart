





import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_intro_46/provider/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // final countProvider = Provider.of<CountProvider>(context,listen: false);
    // Timer.periodic(Duration(seconds: 1), (timer) {
    //   countProvider.setCount();
    //
    // });
  }
  @override
  Widget build(BuildContext context) {



    print("build");
    final countProvider = Provider.of<CountProvider>(context,listen: false);
    return Scaffold(
      appBar:AppBar(
        title: Text("Provider"),
      ),
      body: Center(
        child: Consumer<CountProvider>(
          builder: (_, provider, ___) {
            print("consumer build");
            return Text("${provider.count}",style: TextStyle(fontSize: 50),);
          },
        ),

      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: (){
              // context.read<CountProvider>().incrementCount();
              countProvider.incrementCount();

            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: (){

              // context.read<CountProvider>().decrementCount();
              countProvider.decrementCount();
              Navigator.push(context, MaterialPageRoute(builder: (context) => Secondpage(),));
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}




class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    // final countPro = Provider.of<CountProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Consumer<CountProvider>(

          builder: (_, provider, ___) {
            print("Second provider");
            return Text("${provider.count}");
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: (){

              context.read<CountProvider>().incrementCount();
              // countPro.incrementCount();
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: (){

              context.read<CountProvider>().decrementCount();
             // countPro.decrementCount();
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

