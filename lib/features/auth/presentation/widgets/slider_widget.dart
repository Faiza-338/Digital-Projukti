import 'package:digital_projucti/features/auth/data/slider_data.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 177,
              child: PageView.builder(
                controller: _controller,
                itemCount: SliderData.items.length,
                itemBuilder: (context, index) {
                  final item = SliderData.items[index];
                  return Container(
                    
                    decoration: BoxDecoration(
                      color: Colors.transparent, // No background, only image
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        item.imagePath,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  );
                },
              ),
            ),
            
            Positioned(
              bottom: 3,
             
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: SliderData.items.length,
                  effect: const WormEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    activeDotColor: Colors.blue,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
