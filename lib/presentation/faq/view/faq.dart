import 'package:flutter/material.dart';
import '../../../core/constants/color/color_constants.dart';
import '../../../global_widget/global_appbar.dart';

class FaqPage extends StatefulWidget {
  const FaqPage({super.key});

  @override
  State<FaqPage> createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  List<String> faqItems = [
    "How do I receive work through the app?",
    "What information is included in service ticket?",
    "What actions should I take upon reaching the workshop?",
    "How do I update the status of the service ticket after completing the job?",
    "What should I do if I encounter challenges during the job?"
    "How are service tickets tracked and managed within the app?"
    "Is there a rating or feedback system for completed service tickets?"
    "How are payments processed for completed service tickets?"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
             appBar: GLAppBar(
        title: "Frequently Asked Questions",
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.chevron_left_rounded)),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(color: Color(0xFF013F6E)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFF013F6E),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Looking For Something Specific',
                          hintStyle: TextStyle(color: ColorTheme.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none,
                          ),
                          suffixIcon: Icon(Icons.search, color: ColorTheme.mainClr),
                        ),
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: faqItems.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(238, 237, 237, 1),
                                borderRadius: BorderRadius.circular(10),
                                
                              ),
                              child: ListTile(
                                title: Text(faqItems[index]),
                                trailing: Icon(Icons.keyboard_arrow_down),
                                onTap: () {
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    ],
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
