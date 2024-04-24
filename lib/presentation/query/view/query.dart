import 'package:flutter/material.dart';
import '../../../core/constants/color/color_constants.dart';

class QueryPage extends StatefulWidget {
const QueryPage({super.key});
  @override
  State<QueryPage> createState() => _QueryPageState();
}

class _QueryPageState extends State<QueryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Query",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: ColorTheme.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.chevron_left_rounded,
              color: ColorTheme.mainClr, size: 30),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Drop us a Query",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Fill in the details below and our advisor will get in touch with you in the next 48 hours",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    color: ColorTheme.black,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email Address*',
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: MediaQuery.of(context).size.height*0.25,
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Type your query here* (in 0/500 words)',
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 200,),
              Center(
                child: InkWell(onTap: (){
                },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: 50,
                    decoration: BoxDecoration(
                      color: ColorTheme.mainClr,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Submit Query',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          
        ),
      ),
      
    );
  }
}
