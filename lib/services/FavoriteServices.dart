import 'package:rest_one/model/productModel.dart';
import 'package:rest_one/utility/sqldb.dart';

class FavoriteServices {
  SqlDb sqlDb =SqlDb();

// get All Favorites From SQL DB
 Future<List<Map<String, dynamic>>> getALLFavs()async{
  final response =await  sqlDb.readData("SELECT * from favorites ");
    print(response);  
    return response;


  }

// DELETE FROM table
// WHERE search_condition;

// delete Favorite item From SQL DB
Future<int> removeFavFromDB(int id)async{

   final response =await  sqlDb.deleteData("DELETE FROM favorites WHERE id='$id'");
    print(response);

    return response;

}
}