import 'package:flutter/material.dart';

class InsertScreen extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();  
  final nameController = TextEditingController();
  final emailController = TextEditingController();

  void addStudent(){
    if(_formKey.currentState!.validate()){

    }
  } 

  void clearFields(){
    nameController.clear();
    emailController.clear();
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Student'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Name"
                ),
                controller: nameController,
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "Name field is required";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 12,),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email"
                ),
                controller: emailController,
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "Email field is required";
                  }
                  if(!value.contains('@')){
                    return 'Email is not in correct format';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: addStudent, 
                    child: const Text('Add'),                    
                  ),
                  ElevatedButton(
                    onPressed: clearFields, 
                    child: const Text('Reset'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey
                    ),                    
                  ),
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}