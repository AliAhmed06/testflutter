import 'package:flutter/material.dart';

class UpdateScreen extends StatefulWidget {
  String id;
  UpdateScreen(this.id);

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  final _formKey = GlobalKey<FormState>();  

  final nameController = TextEditingController();

  final emailController = TextEditingController();

  String name = "";

  String email = "";

  void updateStudent(){
    if(_formKey.currentState!.validate()){

    }
  } 

  void clearFields(){
    setState(() {
      name = "";
      email ="";
    });
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Student'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                initialValue: "defaultname",
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Name"
                ),
                onChanged: (value){
                  setState(() {
                    name = value;
                  });
                },
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "Name field is required";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 12,),
              TextFormField(
                initialValue: "DefaultEmail",
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email"
                ),
                onChanged: (value){
                  setState(() {
                    email = value;
                  });
                },
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
                    onPressed: updateStudent, 
                    child: const Text('Update'),                    
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