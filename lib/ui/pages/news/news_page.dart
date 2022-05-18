import 'package:desafio_keyworks/domain/entities/news/news_entity.dart';
import 'package:desafio_keyworks/ui/components/app_colors.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  final NewsEntity newsEntity;
  const NewsPage({Key? key, required this.newsEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notícias'),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back)),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 240,
              child: Stack(
                alignment: Alignment.center,
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    newsEntity.image,
                    fit: BoxFit.fitWidth,
                  ),
                  Flexible(
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(left: 45, right: 15),
                      child: Text(
                        newsEntity.title.toUpperCase(),
                        style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: AppColors.lightColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(top: 4, bottom: 17, left: 40),
              child: Text(
                'Fonte: ${newsEntity.source}',
                style: const TextStyle(
                    color: AppColors.lightColor,
                    fontSize: 11,
                    fontWeight: FontWeight.w300),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(bottom: 17, left: 40),
              child: Text(
                newsEntity.contentEntity.textTitle,
                style: const TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Text(
                newsEntity.contentEntity.text,
                style: const TextStyle(
                  color: AppColors.lightColor,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 40)
          ],
        ),
      ),
    );
  }
}
