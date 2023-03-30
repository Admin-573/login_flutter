import 'package:flutter/material.dart';
import 'package:login/next.dart';
import 'package:login/signup.dart';

void main(){
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String name = "";
  String pass = "";
  String phone = "";
  String email = "";
  String Address = "";
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 25),
              Image.asset("assets/images/stud.png"),
              Image.asset("assets/images/welcome.png",width: 250,),
              Padding( padding: EdgeInsets.symmetric(horizontal: 48,vertical: 6),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    icon: Icon(Icons.person_outline,size: 30,),
                    labelText: "Enter Student Name",
                    hintText: "Name Only",
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return "Name Cannot Be Empty !";
                    }
                    return null;
                  },
                  onChanged: (value){
                    name = value;
                    setState(() {});
                  },
                ),
              ),

              Padding(padding: EdgeInsets.symmetric(horizontal: 48,vertical: 6),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock_outline,size: 30,),
                      labelText: "Enter Student Password",
                      hintText: "Password Only",
                    ),
                    validator: (value){
                      if(value==null||value.isEmpty){
                        return "Password Cannot Be Empty !";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      pass = value;
                      setState(() {});
                    }
                  ),
              ),

              Padding(padding: EdgeInsets.symmetric(horizontal: 48,vertical: 6),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    icon: Icon(Icons.phone,size: 30,),
                    labelText: "Enter Phone Number",
                    hintText: "PhoneNo Only",
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return "Phone Number Cannot Be Empty !";
                    }
                    return null;
                  },
                  onChanged: (value){
                    phone = value;
                    setState(() {});
                  },
                ),
              ),

              Padding(padding: EdgeInsets.symmetric(horizontal: 48,vertical: 6),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    icon: Icon(Icons.email_outlined,size: 30,),
                    labelText: "Enter Student Email",
                    hintText: "Email Only",
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
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

              Padding(padding: EdgeInsets.symmetric(horizontal: 48,vertical: 6),
                child: TextFormField(
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                    icon: Icon(Icons.location_city_outlined,size: 30,),
                    labelText: "Enter Student Address",
                    hintText: "City Only",
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return "Address Cannot Be Empty !";
                    }
                    return null;
                  },
                  onChanged: (value){
                    Address = value;
                    setState(() {});
                  },
                ),
              ),
              SizedBox(height: 25,),

              ElevatedButton(onPressed: (){
                if(_formkey.currentState!.validate()){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>head()));
                }
              }, child: Text("LOG_IN",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              )
              ),

              SizedBox(height: 200,),

              Text("Already A Student ? ",style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>well()));
              }, child: Text("SIGN_UP",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),)),

              SizedBox(height: 25,)
            ],
          ),
        ),
      ),
    );
  }
}


