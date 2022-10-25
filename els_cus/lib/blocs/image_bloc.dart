import 'dart:io';

import 'package:els_cus_mobile/fire_base/services/firebase_storage_service.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

class ImageBloc{
  Future<String?> getImgUrlFromFirebase(String imgName) async{
    final imgUrl = await Get.put(FirebaseStorageService()).getImage(imgName);
    return imgUrl;
  }
  Future selectFile(PlatformFile? pickedFile) async{
    final result = await FilePicker.platform.pickFiles();
    if(result == null) return;
    pickedFile = result.files.first;
  }
  Future uploadFile(PlatformFile? pickedFile, UploadTask? uploadTask) async{
    final path = 'els_images/${pickedFile!.name}';
    final file = File(pickedFile!.path!);

    final ref = FirebaseStorage.instance.ref().child(path);
    uploadTask = ref.putFile(file);

    final snapshot = await uploadTask!.whenComplete(() {});
    final urlDownload = await snapshot.ref.getDownloadURL();
    print('Download link: ${urlDownload}');
  }
}