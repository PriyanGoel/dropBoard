import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';  
  
void main() => runApp(MyApp());  
  
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    final appTitle = 'Query form';  
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp( 
        debugShowCheckedModeBanner: false, 
        title: appTitle,  
        home: Scaffold(  
          appBar: AppBar(  
            title: Text(appTitle),  
          ),  
          body: MyCustomForm(),  
        ),  
      ),
      designSize: const Size(412, 920),
    );  
  }  
}  
// Create a Form widget.  
class MyCustomForm extends StatefulWidget {  
  @override  
  MyCustomFormState createState() {  
    return MyCustomFormState();  
  }  
}  
// Create a corresponding State class, which holds data related to the form.  
class MyCustomFormState extends State<MyCustomForm> {  
  // Create a global key that uniquely identifies the Form widget  
  // and allows validation of the form.  
  final _formKey = GlobalKey<FormState>();  
  
  @override  
  Widget build(BuildContext context) {  
    // Build a Form widget using the _formKey created above.  
    return Form(  
      key: _formKey,  
      child: Column(  
        crossAxisAlignment: CrossAxisAlignment.start,  
        children: <Widget>[  
          TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.person),  
              hintText: 'Enter your full name',  
              labelText: 'Name',  
            ),  
            validator: (value) {  
              if (value.isEmpty) {  
                return 'Please enter some text';  
              }  
              return null;  
            },  
          ),  
          TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.phone),  
              hintText: 'Enter a phone number',  
              labelText: 'Phone',  
            ),  
            validator: (value) {  
              if (value.isEmpty) {  
                return 'Please enter valid phone number';  
              }  
              return null;  
            },  
          ),  
          TextFormField(  
            decoration: const InputDecoration(  
            icon: const Icon(Icons.calendar_today),  
            hintText: 'Enter your query',  
            labelText: 'Query',  
            ),  
            validator: (value) {  
              if (value.isEmpty) {  
                return 'Please enter your query';  
              }  
              return null;  
            },  
           ),  
          new Container(  
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),  
              child: new ElevatedButton(  
                child: const Text('Submit'),  
                onPressed: () {  
                  // It returns true if the form is valid, otherwise returns false  
                  if (_formKey.currentState.validate()) {  
                    // If the form is valid, display a Snackbar.  
                    ScaffoldMessenger.of(context)  
                        .showSnackBar(SnackBar(content: Text('Data is in processing.')));  
                  }  
                  },  
              )),  
        ],  
      ),  
    );  
  }  
}  