import 'package:flutter/material.dart';
import 'package:marketi_app/core/theme/app_colors.dart';
import 'package:marketi_app/features/home/presentation/view/home_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  late List<Widget> screens = const [
    HomeScreen(), // Center(child: Text("HomePage")),
    Center(child: Text("CartScreen")),
    Center(child: Text("FavoritesScreen")),
    Center(child: Text("MenuPage")),

    // HomePage(),
    // SearchScreen(),
    // CategoryScreen(),
    // CartScreen(),
    // ProfileScreen(),
  ];
  int currentScreen = 0;
  late PageController controller = PageController(initialPage: currentScreen);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: screens,
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(14),
          topRight: Radius.circular(14),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0x80B2CCFF),
                offset: Offset(0, -1),
                blurRadius: 10,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xB2B2CCFF),
                width: 1,
              ),
              color: Colors.white,
            ),
            child: BottomNavigationBar(
              iconSize: 20,
              currentIndex: currentScreen,
              mouseCursor: MouseCursor.uncontrolled,
              selectedItemColor: AppColors.lightBlue100,
              unselectedItemColor: AppColors.navy,
              backgroundColor: AppColors.white,
              type: BottomNavigationBarType.fixed,
              // fixedColor: AppColors.white,
              elevation: 0,
              onTap: (index) {
                setState(() {
                  currentScreen = index;
                });
                controller.jumpToPage(currentScreen);
              },
              items: [
                BottomNavigationBarItem(
                  label: "Home",
                  activeIcon: Padding(padding: const EdgeInsets.only(bottom: 2.0), child: Icon(Icons.home_outlined)
                      // SvgPicture.asset(PhotoLink.homeFilledLink ,color: appColors.primaryColor,),
                      ),
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 2.0),
                    child: Icon(Icons.home_outlined),
                    // SvgPicture.asset(PhotoLink.homeLink,color: appColors.primaryColor,),
                  ),
                ),
                BottomNavigationBarItem(
                  label: "Cart",
                  activeIcon: Padding(padding: const EdgeInsets.only(bottom: 2.0), child: Icon(Icons.shopping_cart_outlined)
                      // SvgPicture.asset(PhotoLink.homeFilledLink ,color: appColors.primaryColor,),
                      ),
                  icon: Padding(padding: const EdgeInsets.only(bottom: 2.0), child: Icon(Icons.shopping_cart_outlined)
                      // SvgPicture.asset(PhotoLink.homeLink,color: appColors.primaryColor,),
                      ),
                ),
                BottomNavigationBarItem(
                  label: "Favorites",
                  activeIcon: Padding(padding: const EdgeInsets.only(bottom: 2.0), child: Icon(Icons.favorite)
                      // SvgPicture.asset(PhotoLink.homeFilledLink ,color: appColors.primaryColor,),
                      ),
                  icon: Padding(padding: const EdgeInsets.only(bottom: 2.0), child: Icon(Icons.favorite)
                      // SvgPicture.asset(PhotoLink.homeLink,color: appColors.primaryColor,),
                      ),
                ),
                BottomNavigationBarItem(
                  label: "Menu",
                  activeIcon: Padding(padding: const EdgeInsets.only(bottom: 2.0), child: Icon(Icons.menu_sharp)
                      // SvgPicture.asset(PhotoLink.homeFilledLink ,color: appColors.primaryColor,),
                      ),
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 2.0),
                    child: Icon(Icons.menu_sharp),
                    // SvgPicture.asset(PhotoLink.homeLink,color: appColors.primaryColor,),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
