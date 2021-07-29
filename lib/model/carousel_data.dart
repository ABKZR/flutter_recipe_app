  List<Cuisine> lst = [
    Cuisine(
        title: 'Pakistan',
        image:
            'https://www.foodies.pk/wp-content/uploads/2019/09/Pakistani-Cuisine-Food.jpg'),
    Cuisine(
        title: 'American',
        image:
            'https://images.notquitenigella.com/images/southern-american-yardbird-dinner/__southern-yardbird-dinner-16.jpg'),
    Cuisine(
        title: 'Korean',
        image:
            'https://indianutrition.com/wp-content/uploads/2019/02/Worlds-Top-ten-most-healthy-cuisines-korean-cuisine-870x560.jpg'),
    Cuisine(
        title: 'Chinese',
        image:
            'https://www.englishclub.com/images/vocabulary/food/chinese/chinese-food.jpg'),
    Cuisine(
        title: 'Indonesian',
        image: 'https://static.toiimg.com/photo/65561565.cms'),
    Cuisine(
        title: 'Japanese',
        image: 'https://upload.wikimedia.org/wikipedia/commons/5/57/Oseti.jpg'),
  ];
  List<Cuisine> category = [
    Cuisine(
        title: 'Pizza',
        image: 'https://images.deliveryhero.io/image/fd-pk/LH/h2ia-hero.jpg'),
    Cuisine(
        title: 'Pasta',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeZ9qyR9BVWxTW9KQNVn59Crbxl7rBVeLixA&usqp=CAU'),
    Cuisine(
        title: 'Biryani',
        image:
            'https://glebekitchen.com/wp-content/uploads/2019/12/chickenbiryanibowltop.jpg'),
    Cuisine(
        title: 'Burger',
        image:
            'https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80'),
    Cuisine(
        title: 'Ice cream',
        image:
            'https://cdn.britannica.com/50/80550-050-5D392AC7/Scoops-kinds-ice-cream.jpg'),
    Cuisine(
        title: 'Fish', image: 'https://static.toiimg.com/photo/74190257.cms'),
  ];
  class Cuisine {
  final String title;
  final String image;

  Cuisine({required this.title, required this.image});
}
