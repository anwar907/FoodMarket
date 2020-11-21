part of "models.dart";

class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate});

  @override
  // TODO: implement props
  List<Object> get props =>
      [id, picturePath, name, description, ingredients, price, rate];
}

List<Food> mockFood = [
  Food(
    id: 1,
    picturePath:
        "https://www.rukita.co/stories/wp-content/uploads/2020/02/byurger.jpg",
    name: "Burger King",
    description:
        "Burger King makanan khas orang luar negri yang di lengkapi dengna dading, sayur dan juga ada stick kentang ditemani air minum dingin",
    ingredients: "Daging, Sayur, Kentang, Saos",
    price: 15000,
    rate: 4.2,
  ),
  Food(
    id: 2,
    picturePath:
        "https://www.pngitem.com/pimgs/m/281-2811831_asian-food-png-healthy-food-dish-png-transparent.png",
    name: "Sayur food",
    description:
        "Sayur food dicampur berbagai bahan makanan seperti daging, sayur, kentang dan masih banyak lagi",
    ingredients: "Daging, Sayur, Kentang, Saos",
    price: 13000,
    rate: 4.2,
  ),
  Food(
    id: 3,
    picturePath:
        "https://www.chefmarcsmealprep.com/wp-content/uploads/2018/03/Moroccan-Chicken-Plate_grande.png",
    name: "Nasi Pecel",
    description:
        "Nasi pecel makanan khas sasak yang dicampur dengan sayur kacang panjang, nasi kuning dan juga sambal pedas",
    ingredients: "Daging, Sayur, Kentang, Saos",
    price: 10000,
    rate: 4.2,
  ),
  Food(
    id: 4,
    picturePath: "https://i.dlpng.com/static/png/7079473_preview.png",
    name: "Ayam beberok",
    description:
        "Ayam beberok terdiri dari berbagai macam sayuran seperti wortel daun ubi dan juga bumbu masakan lainnya",
    ingredients: "Daging, Sayur, Kentang, Saos",
    price: 14000,
    rate: 4.2,
  ),
  Food(
    id: 5,
    picturePath: "https://i.dlpng.com/static/png/7079473_preview.png",
    name: "Ayam ",
    description:
        "Ayam beberok terdiri dari berbagai macam sayuran seperti wortel daun ubi dan juga bumbu masakan lainnya",
    ingredients: "Daging, Sayur, Kentang, Saos",
    price: 14000,
    rate: 4.2,
  ),
  Food(
    id: 6,
    picturePath: "https://i.dlpng.com/static/png/7079473_preview.png",
    name: "Ayam Pecel",
    description:
        "Ayam beberok terdiri dari berbagai macam sayuran seperti wortel daun ubi dan juga bumbu masakan lainnya",
    ingredients: "Daging, Sayur, Kentang, Saos",
    price: 14000,
    rate: 4.2,
  ),
  Food(
    id: 7,
    picturePath: "https://i.dlpng.com/static/png/7079473_preview.png",
    name: "Ayam Serbuk",
    description:
        "Ayam beberok terdiri dari berbagai macam sayuran seperti wortel daun ubi dan juga bumbu masakan lainnya",
    ingredients: "Daging, Sayur, Kentang, Saos",
    price: 14000,
    rate: 4.2,
  ),
  Food(
    id: 8,
    picturePath: "https://i.dlpng.com/static/png/7079473_preview.png",
    name: "Ayam Rujak",
    description:
        "Ayam beberok terdiri dari berbagai macam sayuran seperti wortel daun ubi dan juga bumbu masakan lainnya",
    ingredients: "Daging, Sayur, Kentang, Saos",
    price: 14000,
    rate: 4.2,
  )
];
