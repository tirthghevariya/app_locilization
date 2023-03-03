import 'package:get/get.dart';

import '../../translations/en-US.dart';
import '../../translations/hi-IN.dart';
import '../../translations/pt-BR.dart';

class Message extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': EnUs().map,
        'hi_IN': HiIn().map,
        'pt_Br': PtBr().map,
      };
}
