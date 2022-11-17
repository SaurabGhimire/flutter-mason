import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:citizen_charter/main.dart';
import 'package:citizen_charter/services/api_service.dart';


part '{{name}}_state.dart';

class {{name.pascalCase()}}Cubit extends Cubit<{{name.pascalCase()}}State> {
  {{name.pascalCase()}}Cubit() : super({{name.pascalCase()}}Initial());

  FutureOr<void> fetch() async {
    emit({{name.pascalCase()}}Fetching());
    try{
      var res = await getIt<ApiService>().fetch();
      emit({{name.pascalCase()}}FetchSuccess(res));
    } catch(e) {
      emit({{name.pascalCase()}}FetchFailure());
    }
  }
}
