import 'package:flutter/material.dart';

class PersonalPage extends StatelessWidget {
  const PersonalPage({super.key});

  final text1 =
      'Oi Sou o Daniel estudante do 5° semestre de Desenvolvimento de Softwares Multiplataformas, tenho 38 anos e gosto muito de técnologia, em meus horários vagos gosto de assistir vídeos sobre o mundo da tecnologia e jogar videogames, porem ultimamente não tenho jogado muito, pois estou me dedicando aos estudos de programação';

  final imageUrl = 'https://avatars.githubusercontent.com/u/102123924?v=4';

  final imageUrl1 =
      'https://media-exp1.licdn.com/dms/image/C5103AQEsrgt8YX9qOg/profile-displayphoto-shrink_200_200/0/1516584130419?e=1673481600&v=beta&t=IIET6PdmclvRNpCKkSi8-L7-jg-ZPx2nhMzWr5aBZIU';

  final imageUrl2 =
      'https://www.softdownload.com.br/wp-content/uploads/2018/03/como_trocar_foto_perfil_facebook.jpg';

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 250,
          child: PageView(
            children: [
              Image.network(
                imageUrl,
                width: double.infinity,
              ),
              Image.network(
                imageUrl1,
                width: double.infinity,
              ),
              Image.network(
                imageUrl2,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16),
          child: Center(
            child: Text(
              'Daniel França',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(),
            Text('Flutter Developer'),
          ],
        ),
        const Divider(
          indent: 22,
          endIndent: 22,
          height: 15,
          thickness: 1,
          color: Colors.blue,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Text(
            text1,
            style: const TextStyle(height: 1.5),
            textAlign: TextAlign.justify,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
