

import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

class FirebaseStorageService extends GetxService{

  Reference get firebaseStorage => FirebaseStorage.instance.ref();
  Future<String?> getImage(String imageName) async{
    if(imageName == null){
      return null;
    }
    try{
      var urlRef = firebaseStorage.child("els_images").child(imageName.toLowerCase());
      var imgUrl = await urlRef.getDownloadURL();
      return imgUrl;
    }catch(e){
      return null;
    }
  }
}