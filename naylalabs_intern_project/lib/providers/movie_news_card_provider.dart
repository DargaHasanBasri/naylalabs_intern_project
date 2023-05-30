import 'package:intl/intl.dart';
import '../export.dart';

class MovieNewsCardProvider extends ChangeNotifier {
  bool isExpand = false;

  void toggleExpand() {
    isExpand = !isExpand;
    notifyListeners();
  }

  String formatDate(String dateString) {
    DateTime date = DateTime.parse(dateString);
    DateFormat formatter = DateFormat('dd/MM/yyyy HH:mm:ss');
    return formatter.format(date);
  }
}
