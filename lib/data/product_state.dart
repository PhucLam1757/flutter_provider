import 'package:flutter/material.dart';
import '../constants/img_string.dart';
import '../models/product_model.dart';
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class ProductState extends ChangeNotifier {
  List<ProductModel> productionList = [];
  ProductState({required this.productionList});

  changeFavorite(index) {
    productionList[index].isFavorited = !productionList[index].isFavorited;
    notifyListeners();
  }
}

final productState = ProductState(
  productionList: [
    ProductModel(
      id: 1,
      name: 'keyboard 1',
      image: ImgString.KeyboardImg,
      originalPrice: 200,
      size: 35,
      saleOffPrice: 140,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    ),
    ProductModel(
      id: 2,
      name: 'Keyboard 2',
      image: ImgString.KeyboardImg1,
      originalPrice: 150,
      size: 35,
      saleOffPrice: 130,
      description:
          'A keyboard is a computer peripheral device that is used to input text, numbers, and other characters into a computer or similar device. It typically consists of buttons or keys arranged in a standard layout, such as the QWERTY layout, and is used in combination with other input devices, such as a mouse, to control the operation of the computer. Keyboards can be physical or virtual, and can be connected to a computer via a USB port, Bluetooth, or other wireless connection. They are an essential component of a computer system and are widely used for typing, data entry, and gaming.',
    ),
    ProductModel(
      id: 1,
      name: 'keyboard 1',
      image: ImgString.KeyboardImg,
      originalPrice: 200,
      size: 35,
      saleOffPrice: 140,
      description:
          'A keyboard is a computer peripheral device that is used to input text, numbers, and other characters into a computer or similar device. It typically consists of buttons or keys arranged in a standard layout, such as the QWERTY layout, and is used in combination with other input devices, such as a mouse, to control the operation of the computer. Keyboards can be physical or virtual, and can be connected to a computer via a USB port, Bluetooth, or other wireless connection. They are an essential component of a computer system and are widely used for typing, data entry, and gaming.',
    ),
    ProductModel(
      id: 2,
      name: 'Keyboard 2',
      image: ImgString.KeyboardImg1,
      originalPrice: 150,
      size: 35,
      saleOffPrice: 130,
      description:
          'A keyboard is a computer peripheral device that is used to input text, numbers, and other characters into a computer or similar device. It typically consists of buttons or keys arranged in a standard layout, such as the QWERTY layout, and is used in combination with other input devices, such as a mouse, to control the operation of the computer. Keyboards can be physical or virtual, and can be connected to a computer via a USB port, Bluetooth, or other wireless connection. They are an essential component of a computer system and are widely used for typing, data entry, and gaming.',
    ),
    ProductModel(
      id: 1,
      name: 'keyboard 1',
      image: ImgString.KeyboardImg,
      originalPrice: 200,
      size: 35,
      saleOffPrice: 140,
      description:
          'A keyboard is a computer peripheral device that is used to input text, numbers, and other characters into a computer or similar device. It typically consists of buttons or keys arranged in a standard layout, such as the QWERTY layout, and is used in combination with other input devices, such as a mouse, to control the operation of the computer. Keyboards can be physical or virtual, and can be connected to a computer via a USB port, Bluetooth, or other wireless connection. They are an essential component of a computer system and are widely used for typing, data entry, and gaming.',
    ),
    ProductModel(
      id: 2,
      name: 'Keyboard 2',
      image: ImgString.KeyboardImg1,
      originalPrice: 150,
      size: 35,
      saleOffPrice: 130,
      description:
          'A keyboard is a computer peripheral device that is used to input text, numbers, and other characters into a computer or similar device. It typically consists of buttons or keys arranged in a standard layout, such as the QWERTY layout, and is used in combination with other input devices, such as a mouse, to control the operation of the computer. Keyboards can be physical or virtual, and can be connected to a computer via a USB port, Bluetooth, or other wireless connection. They are an essential component of a computer system and are widely used for typing, data entry, and gaming.',
    ),
  ],
);
