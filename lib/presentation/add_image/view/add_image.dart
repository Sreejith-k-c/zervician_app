import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/color/color_constants.dart';

class AddImage extends StatefulWidget {
  const AddImage({super.key});

  @override
  State<AddImage> createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Add Image",
          style: TextStyle(fontWeight: FontWeight.bold),
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DottedBorder(
                borderType: BorderType.RRect,
                radius: Radius.circular(12),
                padding: EdgeInsets.all(6),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    color: ColorTheme.white,
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage("assets/image/Frame.png")),
                        Text(
                          "Drop from gallery/Use camera",
                          style: TextStyle(color: ColorTheme.grey),
                        ),
                      ],
                    )),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AddImage()));
                      },
                      child: Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.38,
                          decoration: BoxDecoration(
                            color: ColorTheme.lightBlue,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.asset("assets/image/camera.png"),
                                Text(
                                  "Use Camera",
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.38,
                          decoration: BoxDecoration(
                            color: ColorTheme.lightBlue,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.asset("assets/image/add.png"),
                                Text(
                                  "Upload from gallery",
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 280),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorTheme.mainClr,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Upload",
                      style: TextStyle(color: ColorTheme.white,
                      fontSize: 18),),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
