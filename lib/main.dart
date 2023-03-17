import 'package:flutter/material.dart';
import 'app_style.dart';
import 'size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kLighterWhite,
        body: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<String> tags = [
    '#Health',
    '#Style',
    '#Technology',
    '#Art',
    '#Fashion',
    '#Food'
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: ListView(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      children: [
        Row(
          children: [
            Container(
              height: 51,
              width: 51,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  color: kLightBlue,
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://cdn3d.iconscout.com/3d/premium/thumb/man-avatar-6299539-5187871.png'))),
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome Back!',
                  style: kPoppinsBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 4),
                ),
                Text(
                  'Monday, 3 October',
                  style: kPoppinsRegular.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      color: kGrey),
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 30),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadius),
              color: kWhite,
              boxShadow: [
                BoxShadow(
                    color: kDarkBlue.withOpacity(0.051),
                    offset: const Offset(0.0, 3.0),
                    blurRadius: 24.0,
                    spreadRadius: 0.0)
              ]),
          child: Row(
            children: [
              Expanded(
                  child: TextField(
                style: kPoppinsRegular.copyWith(
                    color: kBlue,
                    fontSize: SizeConfig.blockSizeHorizontal! * 3),
                controller: TextEditingController(),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 13),
                    hintText: 'Search for article...',
                    border: kBorder,
                    errorBorder: kBorder,
                    disabledBorder: kBorder,
                    focusedBorder: kBorder,
                    focusedErrorBorder: kBorder,
                    hintStyle: kPoppinsRegular.copyWith(
                        color: kLightGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3)),
              )),
              Container(
                decoration: BoxDecoration(
                    color: kBlue,
                    borderRadius: BorderRadius.circular(kBorderRadius)),
                child: IconButton(
                  onPressed: () {
                    print('onSearch');
                  },
                  icon: const Icon(
                    Icons.search,
                    color: kWhite,
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 14,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tags.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 38.0),
                  child: GestureDetector(
                    onTap: () {
                      print(tags[index].replaceAll('#', ''));
                    },
                    child: Text(
                      tags[index],
                      style: kPoppinsMedium.copyWith(
                          color: kGrey,
                          fontSize: SizeConfig.blockSizeHorizontal! * 3),
                    ),
                  ),
                );
              }),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 304,
          child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(12),
                  height: 304,
                  width: 255,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      color: kWhite,
                      boxShadow: [
                        BoxShadow(
                            color: kDarkBlue.withOpacity(0.051),
                            offset: const Offset(0.0, 3.0),
                            blurRadius: 24.0,
                            spreadRadius: 0.0)
                      ]),
                  child: Column(children: [
                    Container(
                      height: 164,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kBorderRadius),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/4b/5e/c2/caption.jpg?w=700&h=-1&s=1'))),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Flexible(
                        child: Text(
                      'Bali - Unique, unmatched. There is no other place like Bali in this world',
                      style: kPoppinsBold.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 3.5),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 19,
                              backgroundColor: kLightBlue,
                              backgroundImage: NetworkImage(
                                  'https://media.licdn.com/dms/image/C5603AQFXIDCRm4g5Ug/profile-displayphoto-shrink_200_200/0/1658067335490?e=1683763200&v=beta&t=0yqGCcSzIb4GbmwrK3YDZmLNc08yV1pZl_V6Fqt_JCE'),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Black Valentine',
                                  style: kPoppinsSemibold.copyWith(
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 3),
                                ),
                                Text(
                                  'Sep 9, 2022',
                                  style: kPoppinsRegular.copyWith(
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 3,
                                      color: kGrey),
                                ),
                              ],
                            )
                          ],
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            print('Send');
                          },
                          child: Container(
                            height: 38,
                            width: 38,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(kBorderRadius),
                                color: kLightWhite),
                            child: const Icon(
                              Icons.send,
                              color: kBlue,
                            ),
                          ),
                        )
                      ],
                    ),
                  ]),
                );
              }),
        )
      ],
    ));
  }
}
