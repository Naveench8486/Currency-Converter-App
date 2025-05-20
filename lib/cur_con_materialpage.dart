import 'package:flutter/material.dart';

class CurConMaterialPage extends StatefulWidget {
  const CurConMaterialPage({super.key});
  @override
  State<CurConMaterialPage> createState()=>_CurConMaterialPageState();
}
class _CurConMaterialPageState extends State<CurConMaterialPage> {
  double result=0;
  final TextEditingController _controller=TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
   return  Scaffold(
    backgroundColor: Colors.blueGrey,
    appBar: AppBar(
      title: const Text('Currency Converter',style: TextStyle(color: Colors.white )),
      centerTitle: true,
      backgroundColor: Colors.blueGrey,
      
    ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text( 'INR ${ result!=0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
             
          )
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: _controller,
            style: const TextStyle(
              color: Colors.black,
            ),
            decoration: const InputDecoration(
              hintText: 'Enter in USD',
              hintStyle: TextStyle(
                color: Colors.black
              ),
              prefixIcon: Icon(Icons.monetization_on),
              prefixIconColor: Colors.black,
              filled:true,
              fillColor:Colors.white,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1.5,
                  style: BorderStyle.solid,
                  color: Colors.black,
                ),
                borderRadius:BorderRadius.all(Radius.circular(10),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1.5,
                  style: BorderStyle.solid,
                  color: Colors.black,
                ),
                borderRadius:BorderRadius.all(Radius.circular(10),
                ),
              ),
            ),
            keyboardType: const TextInputType.numberWithOptions(
              decimal:true,
            ),
          ),   
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextButton(
            onPressed: () {
              setState(() {
                result = double.parse(_controller.text) * 85.52;
              });
            },
            style: TextButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text('Convert'),
        ),
        ),
        ],
        ),
      )
    );
  }


}