import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './notifications_controller.dart';

class NotificationsPage extends GetView<NotificationsController> {
    
    const NotificationsPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('NotificationsPage'),),
            body: Container(),
        );
    }
}