import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../core/constants/color/color_constants.dart';

class CustomerInfo extends StatefulWidget {
  const CustomerInfo({super.key});

  @override
  State<CustomerInfo> createState() => _CustomerInfoState();
}

class _CustomerInfoState extends State<CustomerInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Customer Info",
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
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: ColorTheme.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'assets/image/customer.png',
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Raptor Pag',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  width: 120,
                                ),
                                IconButton(
                                    onPressed: () {}, icon: Icon(Icons.edit))
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(width: 8),
                                Image.asset(
                                  'assets/image/location.png',
                                  width: 25,
                                  height: 25,
                                ),
                                Text(
                                  'Aluva',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                RatingBar.builder(
                                  initialRating: 0,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 20,
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: ColorTheme.mainClr,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '4.0',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                      height: 20,
                      indent: 0,
                      endIndent: 0,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: BoxDecoration(
                              color: ColorTheme.mainClr,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.all(16),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.phone_rounded,
                                    color: ColorTheme.white,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Call',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: ColorTheme.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: BoxDecoration(
                              color: ColorTheme.mainClr,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.all(16),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.location_on_rounded,
                                      color: ColorTheme.white),
                                  SizedBox(width: 8),
                                  Text(
                                    'Direction',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: ColorTheme.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: ColorTheme.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset(
                          'assets/image/User Rounded.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Ahdal Avelath",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset(
                          'assets/image/c_info.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Aluva, Ernakulam, Kerala",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset(
                          'assets/image/c_info_t.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Popular Maruti, Old Showroom Manappuram, Aluva, 680507",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: ColorTheme.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                width: double.infinity,
                padding: EdgeInsets.all(16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: ColorTheme.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                width: double.infinity,
                padding: EdgeInsets.all(16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: ColorTheme.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                width: double.infinity,
                padding: EdgeInsets.all(16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
