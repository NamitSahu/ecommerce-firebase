import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../models/models.dart';
import '../../widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = "/product";

  static Route route({required Product product}) {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => ProductScreen(product: product));
  }

  final Product product;
  const ProductScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: product.name),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share,
                      color: Colors.white,
                    )),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white ),
                    onPressed: () {},
                    child: Text("ADD TO CART",
                        style: Theme.of(context).textTheme.headline3!)),
              ],
            ),
          ),
        ),
        body: ListView(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  aspectRatio: 1.5,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height),
              items: [
                HeroCarouselCard(product: product),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    alignment: Alignment.bottomCenter,
                    color: Colors.black.withAlpha(50),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5.0),
                    width: MediaQuery.of(context).size.width - 10,
                    height: 50,
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product.name,
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            '${product.price}',
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ExpansionTile(
                initiallyExpanded: true,
                title: Text("Product Information",
                    style: Theme.of(context).textTheme.headline3),
                children: const [
                  ListTile(
                    title: Text(
                        ''' Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,
                            numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium
                            molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum
                            optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis
                            obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam
                            nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,
                            tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,
                            quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos 
                            sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam
                            recusandae alias error harum maxime adipisci amet laborum. Perspiciatis'''),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ExpansionTile(
                title: Text("Delivery Information",
                    style: Theme.of(context).textTheme.headline3),
                children: const [
                  ListTile(
                    title: Text(
                        ''' Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,
                            numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium
                            molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum
                            optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis
                            obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam
                            nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,
                            tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,
                            quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos 
                            sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam
                            recusandae alias error harum maxime adipisci amet laborum. Perspiciatis'''),
                  ),
                ],
              ),
            ),
          ],
        )
        // HeroCarouselCard(product: product),
        );
  }
}
