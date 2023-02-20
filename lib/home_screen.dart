import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Whatsapp"),
            bottom: const TabBar(tabs: [
              Tab(child: Icon(Icons.camera_alt)),
              Tab(
                child: Text("Chat"),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(
                child: Text("Call"),
              )
            ]),
            actions: [
              const Icon(Icons.search),
              const SizedBox(width: 10),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (
                    (context) => const[
                        PopupMenuItem(value: 1, child: Text("New Group")),
                        PopupMenuItem(value: 2,
                         child: Text("Setting")),
                        PopupMenuItem(value: 3, child: Text("Logout"))
                      ])),
              const SizedBox(width: 10),
            ],
          ),
          body:  TabBarView(children: [
            const Text("Camera"),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context,index){
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg'),
                      ),
                      title: Text("Kamal"),
                      subtitle:Text("where is my dog") ,
                      trailing: Text("18:07 Pm")

                    );
            }),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context,index){
                if (index==0){
                    return  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("New Updates"),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.green,width: 3)),
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg'),
                              ),
                            ),
                            title: const Text("Kamal"),
                            subtitle:const Text("34 min ago") 
                                       
                    
                          ),
                        ],
                      ),
                    );
            }
            else{
              return  ListTile(
                      leading: Container(
                        decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.green,width: 3)),
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg'),
                        ),
                      ),
                      title: const Text("Kamal"),
                      subtitle:const Text("34 min ago") 
                   

                    );
            }
            }
            ),
  
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context,index){
                    return  ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg'),
                      ),
                      title: const Text("Kamal"),
                      subtitle:Text(index/2==0?"you missed  audio call" :"call time is 12:08"),
                      trailing: Icon(index/2==0?Icons.phone: Icons.video_call) 

                    );}),
          ]),
        ));
  }
}
