
class ItemModelWithBody {
  String title;
  String body;

  ItemModelWithBody({
    required this.title,
    required this.body,
  });
}


List<ItemModelWithBody> goalItems = [
  ItemModelWithBody(
      title: 'Lose Weight',
      body: ' want to burn fats & lose weight'
  ),
  ItemModelWithBody(
      title: 'Gain Muscle',
      body: 'i want to gain weight and /or build muscle',
  ),
  ItemModelWithBody(
      title: 'Get Fitter',
      body: 'I want to enhance my overall physical fitness'
  ),
];

List<ItemModelWithBody> levelItems = [
  ItemModelWithBody(
      title: 'Beginner',
      body: 'first time user , have no or little experience .show me what to do and how to do it'
  ),
  ItemModelWithBody(
      title: 'Intermediate',
      body: 'i know some exercise and how to do them properly , help me get into a structured routine'
  ),
  ItemModelWithBody(
      title: 'Advanced',
      body: 'i’m very experienced with training .Show me something new'
  ),
];

List<bool> selectedItems = List.generate(3, (index) => false);
