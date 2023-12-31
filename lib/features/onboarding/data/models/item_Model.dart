class ItemModel {
  String title;
  bool isChecked;

  ItemModel({
    required this.title,
    this.isChecked = false
  });
}


List<ItemModel> locationItems = [
  ItemModel(title: 'Gym'),
  ItemModel(title: 'Home'),
  ItemModel(title: 'Both'),
];

List<ItemModel> injuryItems = [
  ItemModel(title: 'Neck'),
  ItemModel(title: 'Shoulders'),
  ItemModel(title: 'Back'),
  ItemModel(title: 'Arms'),
  ItemModel(title: 'Knees'),
];



