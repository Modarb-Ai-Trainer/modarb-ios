class CheckboxItemModel {
  String title;
  bool isChecked;

  CheckboxItemModel({
    required this.title,
    this.isChecked = false
  });
}

List<CheckboxItemModel> checkboxItems = [
  CheckboxItemModel(title: 'Barbells'),
  CheckboxItemModel(title: 'Dumbbells'),
  CheckboxItemModel(title: 'Gym machines'),
  CheckboxItemModel(title: 'Resistance band'),
  CheckboxItemModel(title: 'BodyWeight'),
];