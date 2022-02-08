//
//  ViewController.swift
//  UILabel
//
//  Created by MacBook on 30.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let myLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Задаем координаты и размеры нашего Label
        myLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        //Выравниваем по центру экрана
        myLabel.center = self.view.center
        //Максимальное количество строк для рендеринга текста
        myLabel.numberOfLines = 0
        /* Перенос происходит на границах слов,
        если слово не помещается на одной строке */
        myLabel.lineBreakMode = .byWordWrapping
        //Добавили текст нашему Label
        myLabel.text = "Xcode 12 Swift 5.0 iOS Mike Developer Hello World 2022"
        //Метод, который уменьшает текст, если он не помещается в размеры Label
        myLabel.adjustsFontSizeToFitWidth = true
        //Метод, который показывает все слова, находящиеся в Label
        myLabel.sizeToFit()
        //Выравниваем текст по центру
        myLabel.textAlignment = .center
        myLabel.font = UIFont.boldSystemFont(ofSize: 17)
        //Добавляем цвет тексту
        myLabel.textColor = UIColor.white
        //Создаем тень
        myLabel.shadowColor = UIColor.systemPink
        //Задаем отступ тени
        myLabel.shadowOffset = CGSize(width: 3, height: 0)
        //Добавляем наш Label на View
        view.addSubview(myLabel)
    }
}

