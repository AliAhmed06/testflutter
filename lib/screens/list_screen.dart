import 'package:flutter/material.dart';
import 'package:live/screens/insert_screen.dart';
import 'package:live/screens/update_screen.dart';

class ListScreen extends StatelessWidget {
  
  void deleteStudent(String student){
    print('student $student is delted');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('List Student Screen'),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => InsertScreen()
                  )
                );
              }, 
              child: const Text('Add'),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple
              ),
            )
          ],
        )
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Table(
          border: TableBorder.all(),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(                              
              children: [
                TableCell(
                  child: Container(
                    padding: const EdgeInsets.all(10),                     
                    color: Colors.purple,
                    child: const Center(
                      child: Text(
                        'Name',
                        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ),
                  )
                ),
                TableCell(
                  child: Container(
                    padding: const EdgeInsets.all(10),                     
                    color: Colors.purple,
                    child: const Center(
                      child: Text(
                        'Email',
                        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ),
                  )
                ),
                TableCell(
                  child: Container(
                    padding: const EdgeInsets.all(10),                     
                    color: Colors.purple,
                    child: const Center(
                      child: Text(
                        'Action',
                        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ),
                  )
                )
              ]
            ),
            TableRow(
              children: [
                TableCell(
                  child: Container(
                    child: Center(child: Text('name1')),
                  )
                ),
                TableCell(
                  child: Container(
                    child: Center(child: Text('email1')),
                  )
                ),
                TableCell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => UpdateScreen('1')
                            )
                          );
                        }, 
                        icon: Icon(Icons.edit),
                        color: Colors.amber,
                      ),
                      IconButton(
                        onPressed: () => deleteStudent('1'), 
                        icon: Icon(Icons.delete),
                        color: Colors.red,
                      ),
                    ],
                  )
                ),
              ]
            )
          ],
        ),
      ),
    );
  }
}