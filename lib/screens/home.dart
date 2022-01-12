import 'package:flutter/material.dart';
import 'package:reviewten/screens/list_product.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutti Frutti'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
                'https://static.vecteezy.com/ti/vetor-gratis/p1/4528078-frutas-e-vegetais-giz-icones-conjunto-maca-melancia-fatia-limao-metade-berinjela-brocolis-cogumelos-milho-pimentao-abacaxi-isolado-quadro-desenhos-vetor.jpg', fit: BoxFit.cover,),
            Image.network(
                'https://1757140519.rsc.cdn77.org/blog/wp-content/uploads/sites/6/2019/04/0112_h_tutti-frutti-logo_12.png', fit: BoxFit.cover,),
            Material(
              color: Colors.green,
              child: InkWell(
                onTap: () {
                  Future.delayed(const Duration(seconds: 2), () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const ListProduct();
                      }),
                    );
                  });
                },
                child: Container(
                  width: double.maxFinite,
                  height: 110,
                  child: const Center(
                    child: Text(
                      'Entrar',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
