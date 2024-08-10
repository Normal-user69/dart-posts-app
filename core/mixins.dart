import 'identifier.dart';
/**
 * id = 4
 * [{id: 1}, {id: 3}]
 * user.id(3) >= id(2)
 * 
 */
mixin GenerateId<T extends Identifier> {
  static int last_id = 0;
  int getId(List<T> data) {
    int id = 1;
    if (data.isNotEmpty) {
      for (T ob in data) {
        if (ob.id! >= id) {
          id = ob.id! + 1;
        }
      }
    }
    if(last_id == 0 || last_id < id){
    last_id = id;
    }else{
      id = ++last_id;

    }
    return id;
  }
}
