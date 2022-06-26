import 'package:flutter/material.dart';
 

 
class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}
 
class _AppState extends State<App> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
        appBar: AppBar(
   backgroundColor: Colors.white,
  
   title: Text('Login'),
   foregroundColor: Colors.orange,
),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
               Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/cart.png'),
          
        
        ),
      
      ),
    ),
               
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                MaterialButton
                (height:20,
                      onPressed: (){
                       Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MyApp()),
  );  
                      },
                      
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        
                          borderRadius: BorderRadius.circular(40)
                      ),
                      
                      child: Text("LOGIN",style: TextStyle(
                        fontWeight: FontWeight.w600,fontSize: 16,

                      ),),
                      
                    ),
               Container(
                  child: Row(
                    children: <Widget>[
                      Text('Not have an account? Register'),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,      	                        
                  ))]
               )));
  }
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
 
class _MyAppState extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController EmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
        appBar: AppBar(
   backgroundColor: Colors.white,
        leading: IconButton(
    onPressed: () {
       Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => App()),
       );
    },
    icon: Icon(Icons.arrow_back,color: Colors.orange),       
        ),
   title: Text('Sign up'),
   foregroundColor: Colors.orange,
),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
               Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/cart.png'),
          
        
        ),
      
      ),
    ),
               
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                 Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    controller: EmailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'E-mail',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                MaterialButton
                (height:20,
                      onPressed: (){
                        
                      },
                      
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        
                          borderRadius: BorderRadius.circular(40)
                      ),
                      
                      child: Text("Sign UP",style: TextStyle(
                        fontWeight: FontWeight.w600,fontSize: 16,

                      ),),
                    ),	                        
                Container(
                  child: Row(
                    children: <Widget>[
                      Text('Already have an account?'),
                      FlatButton(
                        textColor: Colors.black,
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          //signup screen
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                ))
              ],
            )));
  }
}