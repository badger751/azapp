import 'package:flutter/material.dart';

class ChatScreenProvider extends ChangeNotifier {
  int currentIndex = 0;

  void changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  TextEditingController messageController = TextEditingController();

  bool addPeople = true;
  bool addPet = false;

  void peoplePetChoice(String type) {
    if (type == 'people') {
      addPeople = true;
      addPet = false;
      notifyListeners();
    }
    if (type == 'pet') {
      addPeople = false;
      addPet = true;
      notifyListeners();
    }
  }

  //Memory
    //add people or pet
  TextEditingController nameController = TextEditingController();
  TextEditingController relationshipController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();


    //add fact
  TextEditingController aboutController = TextEditingController();
  TextEditingController categoryController = TextEditingController();

}
