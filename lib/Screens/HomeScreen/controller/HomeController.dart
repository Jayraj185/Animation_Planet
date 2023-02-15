import 'package:animator/Screens/HomeScreen/Model/HomeModel.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
{

  RxList<HomeModel> PlanetList = [
    HomeModel(
        image: "assets/image/mars.png",
        view_image: "assets/image/mars_land.jpg",
        name: "Mars",
        distance: "54.6m",
        gravity: "3.711",
        distance_earth: "120.77m",
        distance_sun: "239.28m",
        overview: "​Mars is the fourth planet from the Sun – a dusty, cold, desert world with a very thin atmosphere. Mars is also a dynamic planet with seasons, polar ice caps, canyons, extinct volcanoes, and evidence that it was even more active in the past.",
        price: "2.8"
    ),
    HomeModel(
        image: "assets/image/neptune.png",
        view_image: "assets/image/neptune_land.jpg",
        name: "Neptune",
        distance: "2.7b",
        gravity: "11.5",
        overview: "Neptune, Eighth planet from the Sun, discovered in 1846 and named for the Roman god of the sea. It has an average distance from the Sun of 2.8 billion mi (4.5 billion km), taking nearly 164 years to complete one orbit and rotating every 16.11 hours.",
        distance_earth: "4.5658b",
        distance_sun: "4.4735b",
        price: "2.8"
    ),
    HomeModel(
        image: "assets/image/moon.png",
        view_image: "assets/image/moon_land.jpg",
        name: "Moon",
        distance: "384.4k",
        gravity: "1.62",
        overview: "Moon, Sole natural satellite of Earth, which it orbits at a mean distance of about 384,400 km (238,900 mi). It is less than one-third the size of Earth (radius about 1,738 km [1,080 mi] at its equator), about 1/81 as massive, and about two-thirds as dense.",
        distance_earth: "384,4k",
        distance_sun: "93m",
        price: "2.8"
    ),
    HomeModel(
        image: "assets/image/earth.png",
        view_image: "assets/image/earth_land.png",
        name: "Earth",
        distance: "149.6m",
        gravity: "9.698",
        overview: "Earth, our home planet, is a world unlike any other. The third planet from the sun, Earth is the only place in the known universe confirmed to host life. With a radius of 3,959 miles, Earth is the fifth largest planet in our solar system, and it's the only one known for sure to have liquid water on its surface.",
        distance_earth: "0",
        distance_sun: "147.24m",
        price: "2.8"
    ),
    HomeModel(
        image: "assets/image/mercury.png",
        view_image: "assets/image/mercury_land.jpg",
        name: "Mercury",
        distance: "130.36m",
        gravity: "3.7",
        overview: "Mercury is the smallest planet in the solar system, and it is also the planet closest to the Sun, making it the most difficult of the planets to see with the unaided eye. Because its rising or setting is always within about two hours of the Sun's, Mercury is never observable when the sky is fully dark.",
        distance_earth: "147.24m",
        distance_sun: "58.957m",
        price: "2.8"
    ),
    HomeModel(
        image: "assets/image/jupiter.png",
        view_image: "assets/image/jupiter_land.jpg",
        name: "Jupiter",
        distance: "778.3m",
        gravity: "27.92",
        overview: "The Latest. Fifth in line from the Sun, Jupiter is, by far, the largest planet in the solar system – more than twice as massive as all the other planets combined. Jupiter's familiar stripes and swirls are actually cold, windy clouds of ammonia and water, floating in an atmosphere of hydrogen and helium.",
        distance_earth: "799.56m",
        distance_sun: "740.7",
        price: "2.8"
    ),
    HomeModel(
        image: "assets/image/saturn.png",
        view_image: "assets/image/saturn_land.jpg",
        name: "Saturn",
        distance: "1.6041b",
        gravity: "10.44",
        overview: "Saturn is the sixth planet from the Sun and the second-largest planet in our solar system. Like fellow gas giant Jupiter, Saturn is a massive ball made mostly of hydrogen and helium. Saturn is not the only planet to have rings, but none are as spectacular or as complex as Saturn's. Saturn also has dozens of moons.",
        distance_earth: "1.6041b",
        distance_sun: "1.4686b",
        price: "2.8"
    ),
    HomeModel(
        image: "assets/image/venus.png",
        view_image: "assets/image/venus_land.jpg",
        name: "Venus",
        distance: "229.53m",
        gravity: "8.87",
        overview: "Venus is the second planet from the Sun and is Earth's closest planetary neighbor. It's one of the four inner, terrestrial (or rocky) planets, and it's often called Earth's twin because it's similar in size and density. These are not identical twins, however – there are radical differences between the two worlds.",
        distance_earth: "229.52m",
        distance_sun: "108.73m",
        price: "2.8"
    ),
    HomeModel(
        image: "assets/image/uranus.png",
        view_image: "assets/image/uranus_land.jpg",
        name: "Uranus",
        distance: "2.9068b",
        gravity: "8.87",
        overview: "Uranus is the seventh planet from the Sun, and has the third-largest diameter in our solar system. It was the first planet found with the aid of a telescope, Uranus was discovered in 1781 by astronomer William Herschel, although he originally thought it was either a comet or a star.",
        distance_earth: "2.9068b",
        distance_sun: "2.9411b",
        price: "2.8"
    ),
  ].obs;
  Rx<HomeModel> h1 = HomeModel().obs;

}