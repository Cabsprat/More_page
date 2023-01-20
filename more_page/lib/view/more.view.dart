import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:more_page/widget/settings.tile.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Ionicons.return_down_back)),
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "More",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const SizedBox(
                height: 10,
              ),
              SettingsTile(
                color: Colors.lightBlue,
                icon: Ionicons.time_sharp,
                title: "Set Time",
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              SettingsTile(
                color: Colors.green,
                icon: Ionicons.add_sharp,
                title: "Add new Employee",
                onTap: () {},
              ),
              const SizedBox(
                height: 40,
              ),
              SettingsTile(
                color: Colors.red,
                icon: Ionicons.log_out_outline,
                title: "Log Out",
                textColor: Colors.red,
                endIcon: false,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
