
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';


class list_funtion extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    List<Map<String , String>> elements = [
      {'item':'Pizza' , 'group': 'Pizza street'},
      {'item':'Burger' , 'group': 'Pizza street'},
      {'item':'French Fries' , 'group': 'Pizza street'},
      {'item':'Soft drink' , 'group': 'Pizza street'},
      {'item':'Naan' , 'group': 'Saini Vashno Dhaba'},
      {'item':'Kadai paneer' , 'group': 'Saini Vashno Dhaba'},
      {'item':'Matar paneer' , 'group': 'Saini Vashno Dhaba'},
      {'item':'Rayta(Bundi)' , 'group': 'Saini Vashno Dhaba'},
      {'item':'Ice-Cream' , 'group': 'Ice cream cafe'},
      {'item':'Soft-drink' , 'group': 'Ice cream cafe'},
      {'item':'Softy' , 'group': 'Ice cream cafe'},
      {'item':'Faluda', 'group': 'Ice cream cafe'},

    ];
    return Scaffold(
      body:GroupedListView<dynamic , String>(
        elements: elements,
        groupBy: (elements) => elements['group'],
        useStickyGroupSeparators: false,
        groupSeparatorBuilder: (value) =>Container(
          width: double.infinity,
          child: Center(child: Text(value)),
        ),
        itemBuilder: (context, element) => Card(
          elevation: 4,
          child: ListTile(
            contentPadding: const EdgeInsets.all(12),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/Images/burger.jpg'),
            ),


            trailing: ElevatedButton(onPressed: ()
            {
              print("hello World!");
            }, child: Text("Add Cart +"),

            ),
          ),

        ),

      ) ,
      bottomSheet: BottomAppBar(
        child: PopupMenuButton(
          icon: Icon(Icons.menu),
          itemBuilder: (context) {

            return [
              PopupMenuItem<int>(
                value: 0,
                child: Text("Pizza Street"),
              ),

              PopupMenuItem<int>(
                value: 1,
                child: Text("Saini vashno dhaba"),
              ),

              PopupMenuItem<int>(
                value: 2,
                child: Text("Ice cream cafe"),
              ),
            ];

          }, onSelected: (value){
          if(value == 0)
          {


          }

        },

        ),
      ) ,
    );


  }

}