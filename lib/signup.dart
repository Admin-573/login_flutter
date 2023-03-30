import 'package:flutter/material.dart';
import 'package:login/main.dart';
import 'package:login/next.dart';

void main()
{
  runApp(const MaterialApp(
    home: well(),
    debugShowCheckedModeBanner: false,
  ));
}
class well extends StatefulWidget {
  const well({Key? key}) : super(key: key);

  @override
  State<well> createState() => _wellState();
}

class _wellState extends State<well> {
  String email="";
  String pass="";
  final _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Material(
        color: Colors.yellow[100],
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50),
              Image.asset("assets/images/signup.png",width: 250,),
              SizedBox(height: 25),

              Padding( padding: EdgeInsets.symmetric(horizontal: 48,vertical: 6),
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.person_outline,size: 35,),
                    labelText: "Enter Student Email",
                    hintText: "Only Email",
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty)
                      {
                        return "Email Cannot Be Empty !";
                      }
                    return null;
                  },
                  onChanged: (value){
                    email = value;
                    setState(() {});
                  },
                ),
              ),

              Padding( padding: EdgeInsets.symmetric(horizontal: 48,vertical: 6),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(Icons.password_outlined,size: 35,),
                    labelText: "Enter Student Password",
                    hintText: "Only Password",
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty)
                    {
                      return "Email Cannot Be Empty !";
                    }
                    return null;
                  },
                  onChanged: (value){
                    email = value;
                    setState(() {});
                  },
                ),
              ),
              SizedBox(height: 25),
              ElevatedButton(onPressed: (){
                if(_formkey.currentState!.validate()){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>head()));
                }
              }, child: Text("SIGN_UP",style: TextStyle(
                fontSize: 18
              ),)),

              SizedBox(height: 180),

              Text("New Student In Our App ?",style:TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              }, child: Text("LOG_IN",style: TextStyle(
                fontSize: 18
              ),)),

              SizedBox(height: 25,)
            ],
          ),
        ),
      ),
    );
  }
}
