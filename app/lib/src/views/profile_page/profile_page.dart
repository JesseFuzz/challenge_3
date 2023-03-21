import 'package:app/src/views/profile_page/widgets/bottom_sheet_widget.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final customColorTheme = Theme.of(context).extension<CustomColorTheme>()!;
    final customTextTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return Scaffold(
      backgroundColor: customColorTheme.primary,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            ContactInformationCardWidget(),
            TaskItemWidget(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return BottomSheetWidget();
            },
          );
        },
      ),
    );
  }
}
