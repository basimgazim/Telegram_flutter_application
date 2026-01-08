import 'package:flutter/material.dart';
import 'drawer.dart';
class Mychat extends StatefulWidget {
  const Mychat({super.key});

  @override
  State<Mychat> createState() => _MychatState();
}

class _MychatState extends State<Mychat> {
  Color c=const Color.fromARGB(255, 128, 169, 195);
  TextEditingController name=TextEditingController();
List users=[];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text("Telegram",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:25 ),),
          backgroundColor: const Color.fromARGB(255, 78, 150, 194),
          iconTheme: const IconThemeData(color: Colors.white),
          actions: [
            IconButton
          (
            icon:Icon(Icons.search_rounded,color: Colors.white,),onPressed: () {},
            ),
          ]
    ),
  
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
                labelText: "Chat",
                hintText: "Type your message",
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
              
               child: Text("إرسال ")),
               Expanded(child:ListView.builder(
                itemCount: users.length,
                itemBuilder: (context,i)=>Card(
                  color: c,
                  child: ListTile(
                    onTap: () {
                       Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Mychat(),));
                    //  name.text=users[i];
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