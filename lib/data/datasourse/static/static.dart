import 'package:applicationgetx/core/constant/imageassets.dart';
import 'package:applicationgetx/data/model/onboardingmodel.dart';
import 'package:flutter/material.dart';

List<Onboardingmodel> onboardingList = [
  Onboardingmodel(
      title: "choose product",
      body:
          "We Have a 100K prouducts Choose \n Your product from our E-\n commerce shop.",
      image: AppImageassets.onBoardingimageone),
  Onboardingmodel(
      title: "Easy&Safe Payment",
      body:
          "Easy Checkout &Safe Payment \nmethode. Trusted by our Customers\n from all over thr word",
      image: AppImageassets.onBoardingimagetwo),
  Onboardingmodel(
      title: "Track Your Order",
      body:
          "Best Tracker has been Uesd For\n Track Your order .You will know where\n your oroduct is at the moment",
      image: AppImageassets.onBoardingimageThree),
  Onboardingmodel(
      title: "Fast Delivery",
      body:
          "Reliable And fast Delivery We\n Deliver Your Prouduct the fastest\n way Possible",
      image: AppImageassets.onBoardingimagefour),
];
