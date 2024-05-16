import 'package:faker/faker.dart';
import 'dart:math';

List<String> imagens = [
  'https://images.pexels.com/photos/577585/pexels-photo-577585.jpeg?auto=compress&cs=tinysrgb&w=600',
  'https://images.pexels.com/photos/6011602/pexels-photo-6011602.jpeg?auto=compress&cs=tinysrgb&w=600',
  'https://images.pexels.com/photos/2115217/pexels-photo-2115217.jpeg?auto=compress&cs=tinysrgb&w=600',
  'https://images.pexels.com/photos/1779487/pexels-photo-1779487.jpeg?auto=compress&cs=tinysrgb&w=600',
  'https://images.pexels.com/photos/546819/pexels-photo-546819.jpeg?auto=compress&cs=tinysrgb&w=600',
  'https://images.pexels.com/photos/2422286/pexels-photo-2422286.jpeg?auto=compress&cs=tinysrgb&w=600',
  'https://images.pexels.com/photos/2422293/pexels-photo-2422293.jpeg?auto=compress&cs=tinysrgb&w=600',
  'https://images.pexels.com/photos/1049764/pexels-photo-1049764.jpeg?auto=compress&cs=tinysrgb&w=600',
  'https://images.pexels.com/photos/159533/kid-notebook-computer-learns-159533.jpeg?auto=compress&cs=tinysrgb&w=600',
  'https://images.pexels.com/photos/2182973/pexels-photo-2182973.jpeg?auto=compress&cs=tinysrgb&w=600',
];

final random = Random();
var rd;

class Feed {
  final String title;
  final String subtitle;
  final String imageUrl;

  Feed(this.title, this.subtitle, this.imageUrl);

  Feed.fromFaker(Faker faker)
      : title = faker.conference.name(),
        subtitle = faker.lorem.sentences(10).join().replaceAll('.', '. '),
        imageUrl = imagens[rd = random.nextInt(
            10)]; /*faker.image.image(random: true, keywords: ['programming'])*/
}
