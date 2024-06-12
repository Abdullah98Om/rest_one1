import 'package:rest_one/model/productModel.dart';

class SectionModel {
  String name , img , id ;
  List<ProductModel> products=[];

    SectionModel({
      this.id,
         this.name,
         this.img,
    });

    SectionModel.fromjson(Map<String , dynamic> map ){
      if(map == null){
        return ;
      }
      id=map["id"];
     name= map["name"];
     img=map["img"];
    }

    tojson(){
      return {
        "name":name,
        "img":img,
        "id":id
      };

    }

}