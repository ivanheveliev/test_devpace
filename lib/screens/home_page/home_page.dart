import 'package:flutter/material.dart';
import 'package:t_devpace/base/app_settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: const Color(0xff0024fe),
        centerTitle: true,
        title: const Text(
          'DevPace Test',
        ),
      ),
      body: _getBodyContainer(),
    );
  }

  Widget _getBodyContainer() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height -
                MediaQuery.of(context).padding.top - kToolbarHeight,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Image.asset(
                  'lib/assets/photos/logo.png',
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: AppSettings.tilesList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 2),
                itemBuilder: (context, index) {
                  final i = AppSettings.tilesList[index];
                  return Padding(
                    padding: EdgeInsets.only(
                      left: index % 2 == 0 ? 10 : 5,
                      right: index % 2 == 1 ? 10 : 5,
                      bottom: 10,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black),
                      ),
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Center(
                          child: Text(
                            i.title,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
