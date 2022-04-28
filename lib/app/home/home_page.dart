import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:live_coding_dio_podcast/app/podcast/podcast_screen.dart';
import 'package:live_coding_dio_podcast/app/util/custom_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isplaying = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        SvgPicture.asset("assets/logo.svg",
                            width: 40, height: 40)
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          "Dio",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          "Cast",
                          style: TextStyle(
                            color: CustomColor.pink700,
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(right: 2, left: 20),
                height: 35,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CategoryWidget(
                      color: CustomColor.pink700,
                      text: 'Dart',
                    ),
                    SizedBox(width: 10),
                    CategoryWidget(
                      color: CustomColor.pink700,
                      text: 'java',
                    ),
                    SizedBox(width: 10),
                    CategoryWidget(
                      color: CustomColor.pink700,
                      text: 'flutter',
                    ),
                    SizedBox(width: 10),
                    CategoryWidget(
                      color: CustomColor.pink700,
                      text: 'Java',
                    ),
                    SizedBox(width: 10),
                    CategoryWidget(
                      color: CustomColor.pink700,
                      text: 'Dart',
                    ),
                    SizedBox(width: 10),
                    CategoryWidget(
                      color: CustomColor.pink700,
                      text: 'Flutter',
                    ),
                    SizedBox(width: 10),
                    CategoryWidget(
                      color: CustomColor.pink700,
                      text: 'Reactjs',
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.fromLTRB(25, 30, 25, 0),
                  child: const Text(
                    "Podcasts Recentes",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Container(
                  height: isplaying
                      ? MediaQuery.of(context).size.height * 0.54
                      : MediaQuery.of(context).size.height * 0.8,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        PodcastWidget(
                          img: "assets/philips.jpg",
                          title: "Philips Fullstack Developer",
                          description: "Bootcamp fullstack",
                          click: () {
                            setState(() {
                              isplaying = !isplaying;
                            });
                          },
                          icon: Icon(
                            isplaying ? Icons.pause : Icons.play_arrow,
                            color: Colors.white,
                          ),
                          color: isplaying
                              ? CustomColor.pink700
                              : CustomColor.gray700,
                        ),
                        const SizedBox(height: 20),
                        PodcastWidget(
                          img: "assets/impulso.jpg",
                          title: "Impulso",
                          description: "Como é trabalhar na Impulso",
                          click: () {},
                          icon: const Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          ),
                          color: CustomColor.gray700,
                        ),
                        const SizedBox(height: 20),
                        PodcastWidget(
                          img: "assets/avanade.jpg",
                          title: "Avanade",
                          description: "Como é trabalhar na Avanade",
                          click: () {},
                          icon: const Icon(Icons.play_arrow_rounded,
                              color: Colors.white),
                          color: CustomColor.gray700,
                        ),
                        const SizedBox(height: 20),
                        PodcastWidget(
                          img: "assets/avanade.jpg",
                          title: "Avanade",
                          description: "Como é trabalhar na Avanade",
                          click: () {},
                          icon: const Icon(Icons.play_arrow_rounded,
                              color: Colors.white),
                          color: CustomColor.gray700,
                        ),
                        const SizedBox(height: 20),
                        PodcastWidget(
                          img: "assets/avanade.jpg",
                          title: "Avanade",
                          description: "Como é trabalhar na Avanade",
                          click: () {},
                          icon: const Icon(Icons.play_arrow_rounded,
                              color: Colors.white),
                          color: CustomColor.gray700,
                        ),
                        const SizedBox(height: 20),
                        PodcastWidget(
                          img: "assets/avanade.jpg",
                          title: "Avanade",
                          description: "Como é trabalhar na Avanade",
                          click: () {},
                          icon: Icon(Icons.play_arrow_rounded,
                              color: Colors.white),
                          color: CustomColor.gray700,
                        ),
                        const SizedBox(height: 20),
                        PodcastWidget(
                          img: "assets/avanade.jpg",
                          title: "Avanade",
                          description: "Como é trabalhar na Avanade",
                          click: () {},
                          icon: Icon(Icons.play_arrow_rounded,
                              color: Colors.white),
                          color: CustomColor.gray700,
                        ),
                        const SizedBox(height: 20),
                        PodcastWidget(
                          img: "assets/avanade.jpg",
                          title: "Avanade",
                          description: "Como é trabalhar na Avanade",
                          click: () {},
                          icon: Icon(Icons.play_arrow_rounded,
                              color: Colors.white),
                          color: CustomColor.gray700,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              isplaying
                  ? Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PodcastScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                CustomColor.gray700,
                                CustomColor.gray200
                              ],
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft,
                            ),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 20),
                                color: CustomColor.gray700.withOpacity(0.4),
                                blurRadius: 40,
                              )
                            ],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                "assets/philips.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Philips Fullstack Developer",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "08:16 / 20:21",
                                        style:
                                            TextStyle(color: Color(0xffDEDBDB)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: CustomColor.pink700,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(
                                  isplaying ? Icons.pause : Icons.play_arrow,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : const SizedBox(height: 40),
            ],
          ),
        ),
        bottomNavigationBar: BottonNavigator(),
      ),
    );
  }
}

class BottonNavigator extends StatelessWidget {
  const BottonNavigator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: CustomColor.pink700,
      selectedFontSize: 13,
      unselectedFontSize: 13,
      iconSize: 30,
      items: const [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: "Pesquisar",
          icon: Icon(Icons.search),
        ),
        BottomNavigationBarItem(
          label: "Categorias",
          icon: Icon(Icons.grid_view),
        ),
        BottomNavigationBarItem(
          label: "Minha conta",
          icon: Icon(Icons.account_circle_outlined),
        ),
      ],
    );
  }
}

class PodcastWidget extends StatelessWidget {
  const PodcastWidget({
    Key? key,
    required this.img,
    required this.title,
    required this.description,
    required this.color,
    required this.icon,
    required this.click,
  }) : super(key: key);

  final String img;
  final String title;
  final String description;
  final Color color;
  final Icon icon;
  final Function()? click;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(img), fit: BoxFit.cover)),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 15),
                ),
                Text(
                  description,
                  style: const TextStyle(color: Colors.grey),
                )
              ],
            )
          ],
        ),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: InkWell(
            onTap: click,
            child: icon,
          ),
        ),
      ],
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 130,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(15), color: color),
      child: Center(
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
