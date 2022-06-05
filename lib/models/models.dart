class ForYou {
  String? name;
  String? rate;
  String? img;

  ForYou({
    this.name,
    this.rate,
    this.img,
  });
}

ForYou forYou = ForYou();

List<ForYou> forYouData = <ForYou>[
  ForYou(
      name: 'Subway Surfers',
      rate: '4.2',
      img:
          'https://play-lh.googleusercontent.com/VQTduDHaiTghb9_Y7ltXGrttpfo2f-OL8OInMMSOzYeW9jISgc9_8JGRjciGrzfhGz8=s180-rw'),
  ForYou(
      name: 'Asphalt 9: Legends',
      rate: '4.6',
      img:
          'https://play-lh.googleusercontent.com/alS3CsVCR8wlYsdL5pHo8aQU-3OdJGTJpWOrkZV3sD7O82TbvBbvwVV4-knmFJB9mI0=s180-rw'),
  ForYou(
      name: 'Asphalt Nitro',
      rate: '4.7',
      img:
          'https://play-lh.googleusercontent.com/xMRV92isAcFWE8c2sZk90mZNxBICaVU1BSjsbf65g1z9tElBNOUeJpNrwH4Kcqu8TQ=s180-rw'),
  ForYou(
      name: 'Temple Run 2',
      rate: '4.2',
      img:
          'https://play-lh.googleusercontent.com/_MqCGarj8xVBfyWImaJpqNapr05QXCOEBJUgtCRAirbviJZzP8N06XQ_Hz0n-ya7uSIK=s180-rw'),
  ForYou(
      name: 'Angry Birds 2',
      rate: '4.5',
      img:
          'https://play-lh.googleusercontent.com/-pve71iDdNqhwPL6mvlkhmG1RtfnW9Njw_AI3rT_-UQ8St9SHdIwIhGZUZkbe_LQEd_5=s180-rw'),

  ForYou(
      name: 'Shadow Fight 2',
      rate: '4.3',
      img: 'https://play-lh.googleusercontent.com/QAtEm5qW3UU8K3IZ7n8IRaM1T_XUaxmxKfrdlhPghgDexI7dW6quHDIvX1biv7SiQwM=s180-rw'),
  ForYou(
      name: 'Shadow Fight 3 - RPG fighting',
      rate: '4.2',
      img: 'https://play-lh.googleusercontent.com/bOrpHn6uxgQRZfiwNFkHN-idtottSkq6iDu0wUTAAXLJRNauJ3Um0qN2fm6Z6MeFYS0=s180-rw'),
  ForYou(
      name: 'Garena Free Fire MAX',
      rate: '4.7',
      img: 'https://play-lh.googleusercontent.com/OS4b5V2evsCxp1vSDCGi3MvWHaOLlmyk4t6j7ryYpXkqKWbMsh2IA0IbkpL8xC48og=s180-rw'),
  ForYou(
      name: 'Candy Crush Soda Saga',
      rate: '4.3',
      img: 'https://play-lh.googleusercontent.com/EdYMqphxFLNjWYRDzZ0pFKxbYgfuMZarMdK0RCi-NCrvPztYRbBx8r1aRVw4trzAJ-s=s180-rw'),
 
 
  ForYou(
      name: 'Pokémon UNITE',
      rate: '4.2',
      img: 'https://play-lh.googleusercontent.com/l6iBBhrah3mNhvcjZgZBwICAF5uu3KjorU4pq-eMOxYgT_L_TnpzT7a3TmmdxaMMgbUy=s180-rw'),
  ForYou(
      name: 'Beach Buggy Racing',
      rate: '3.5',
      img: 'https://play-lh.googleusercontent.com/ZQXNGxMGyXurnCTHHj5JQh52_fWEjXUwYGeJi3VKWOwrEeUjGAvcdCJSySmMGxvZujI=s180-rw'),
  ForYou(
      name: 'Bubble Shooter Rainbow',
      rate: '4.1',
      img: 'https://play-lh.googleusercontent.com/eegE3eRTbUqyi_7f3bRgscQt7F90Ae-5LAehe55HLwgHUFRitucpHZw8WgJ2iRC_DTM=s180-rw'),
  ForYou(
      name: 'Clash Royale',
      rate: '4.7',
      img: 'https://play-lh.googleusercontent.com/rIvZQ_H3hfmexC8vurmLczLtMNBFtxCEdmb2NwkSPz2ZuJJ5nRPD0HbSJ7YTyFGdADQ=s180-rw'),
  ForYou(
      name: 'Carrom Pool: Disc Game',
      rate: '3.8',
      img: 'https://play-lh.googleusercontent.com/Sr0hRRfcbEm1tuROXK9CM8aV8s5rxLxwg52i8R5INV1QyRo1_nb55Cc2-UzT7jod3uU=s180-rw'),
];


List topData = [
  'Top free',
  'Top grossing',
  'Trending',
  'Top popular',
];


class Categories {

  String? name;
  String? img;

  Categories({
    this.name,
    this.img,
  });

}


Categories categories = Categories();

List <Categories>catData = <Categories>[

  Categories(name: 'Action'),
  Categories(name: 'Adventure'),
  Categories(name: 'Arcade'),
  Categories(name: 'Board'),
  Categories(name: 'Card'),
  Categories(name: 'Casino'),
  Categories(name: 'Casual'),
  Categories(name: 'Educational'),
  Categories(name: 'Music'),
  Categories(name: 'Puzzal'),
  Categories(name: 'Racing'),
  Categories(name: 'Role Playing'),
  Categories(name: 'Simulation'),
  Categories(name: 'Sports'),
  Categories(name: 'Strategy'),
  Categories(name: 'Trivia'),
  Categories(name: 'Word'),

];


class EditChoice {

  String? name;
  String? img;

  EditChoice({
    this.name,
    this.img,
  });

}

EditChoice editChoice = EditChoice();

List <EditChoice>editChoiceData = <EditChoice>[

  EditChoice(name: 'offline games worth playing',img: 'https://techviral.net/wp-content/uploads/2018/04/Best-Offline-Games-For-Android.jpg'),

  

];