import 'package:flutter/material.dart';
import 'package:flutter_application_11/chat.dart';
import 'package:flutter_application_11/drawer.dart';
import 'package:flutter_application_11/home.dart';

class Adduser extends StatefulWidget {
  const Adduser({super.key});

  @override
  State<Adduser> createState() => _AdduserState();
}

class _AdduserState extends State<Adduser> {
    Color c=const Color.fromARGB(255, 128, 169, 195);
  TextEditingController name=TextEditingController();
List users=["Tasneem","Amat","Nesreen"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Telegram",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:25 ),),
          backgroundColor: const Color.fromARGB(255, 78, 150, 194),
          iconTheme: const IconThemeData(color: Colors.white),
          actions: [
            IconButton
          (
            icon:Icon(Icons.search_rounded,color: Colors.white,),onPressed: () {},
            ),
          ]
    ),
    drawer: MyDrawer(),
    body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onSubmitted: (value){
                setState(() {
                  
                });
                users.add(value);
              },
              controller: name,
              decoration: InputDecoration(
                labelText: "Name",
                hintText: "input your name",
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))
              ),
            ),
            ),
            ElevatedButton(
              style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white,)),
              onPressed:(){
                setState(() {
                  
                });
                if(name.text.isNotEmpty){
                  
                  users.add(name.text);
                  name.clear();
                }
                else
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("ادخل اسم الطالب")));
              },
              
               child: Text("أضف مستخدم")),
               Expanded(child:ListView.builder(
                itemCount: users.length,
                itemBuilder: (context,i)=>Card(
                  color: c,
                  child: ListTile(
                    onTap: () {
                       Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Mychat(),));
                      name.text=users[i];
                    },
                    leading: IconButton(onPressed: () {
                      users.removeAt(i);
                      setState(() {
                        
                      });
                    }, 
                    icon: Icon(Icons.delete,color: Colors.red,)),
                    trailing: IconButton(onPressed: () {
                      users[i]=name.text;
                      setState(() {
                        
                      });
                    }, icon: Icon(Icons.edit,color: Colors.blue,)),
                  title: Text(users[i],textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),),),))
          
        ],
      ),
);
  }
  
}