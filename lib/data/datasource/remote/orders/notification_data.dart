import 'package:ecommerce_ui/core/class/crud.dart';
import 'package:ecommerce_ui/linkapi.dart';

class NotificationData {
  Crud crud;
  NotificationData(this.crud);
  getData(String id) async {
    var response = await crud.postData(AppLink.notification, {"id": id});
    return response.fold((l) => l, (r) => r);
  }
}
