import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            backgroundColor: Colors.teal,
            title:
                const Text('Whatsapp', style: TextStyle(color: Colors.white)),
            bottom: const TabBar(tabs: [
              Tab(
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
              ),
              Tab(
                child: Text(
                  'Chats',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                child: Text(
                  'Status',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                child: Text(
                  'Calls',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ]),
            
            actions:  [
               Icon(
                Icons.search,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              PopupMenuButton( icon: Icon(Icons.more_horiz, color: Colors.white,),
                itemBuilder: (context)=>[
                    PopupMenuItem(
                      value: '1',
                      child:  Text('New Group'),
                    
                    ),
                    PopupMenuItem(
                      value: '2',
                      child:  Text('Settings'),
                    
                    ),
                    PopupMenuItem(
                      value: '3',
                      child:  Text('Logout'),
                    
                    ),
              ],
              ),
              
             
              
            ],
          ),
          body:  TabBarView(
              children: [
                Text(''), 
              ListView.builder(itemCount: 10,
                itemBuilder: (context, index){
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C5603AQHeyXlrJ95lgQ/profile-displayphoto-shrink_800_800/0/1643804493217?e=1714003200&v=beta&t=O9pO0331ArZc2l0BfsZdAGeP-Q9wcD3F64uvZE3cWOc'),
                  ),
                 title: Text ('Prayash Rimal'),
                 subtitle: Text('What The Fuck!'),
                 trailing: Text('12:62 AM'),
                );
              },),
              //message ended
              ListView.builder(itemCount: 10,
                itemBuilder: (context, index){
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C5603AQHeyXlrJ95lgQ/profile-displayphoto-shrink_800_800/0/1643804493217?e=1714003200&v=beta&t=O9pO0331ArZc2l0BfsZdAGeP-Q9wcD3F64uvZE3cWOc'),
                  ),
                 title: Text ('Prayash Rimal'),
                 subtitle: Text('Active'),
                 trailing: Icon(Icons.circle, color: Colors.green,),
                );
              },), 
              //status ended
              ListView.builder(itemCount: 10,
                itemBuilder: (context, index){
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C5603AQHeyXlrJ95lgQ/profile-displayphoto-shrink_800_800/0/1643804493217?e=1714003200&v=beta&t=O9pO0331ArZc2l0BfsZdAGeP-Q9wcD3F64uvZE3cWOc'),
                  ),
                 title: Text ('Prayash Rimal'),

                 subtitle: Text(index/2==0?'You Missed audio call from Prayash- 12:61 AM':'You Missed video call from Prayash- 12:61 AM', style: TextStyle(color: Colors.red),),
                 trailing: Icon(index/2==0? Icons.phone: Icons.video_call),
                );
              },),
              //calls ended
              ]
              ),
        ));
  }
}
