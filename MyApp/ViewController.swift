//
//  ViewController.swift
//  MyApp
//
//  Created by Aleksei Naumyshev on 22.12.2025.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let nameLabel = UILabel()
        nameLabel.text = "Алексей Наумышев"
        nameLabel.textColor = .black
        nameLabel.font = UIFont.systemFont(ofSize: 30)
        nameLabel.frame = CGRect(x: 150,
                                 y: 100,
                                 width: 300,
                                 height: 50)
        view.addSubview(nameLabel)
        
        let ageLabel = UILabel()
        ageLabel.text = "47 лет"
        ageLabel.textColor = .black
        ageLabel.font = UIFont.systemFont(ofSize: 30)
        ageLabel.frame = CGRect(x: 150,
                                y: 180,
                                width: 300,
                                height: 50)
        view.addSubview(ageLabel)
        
        let avatarImageView = UIImageView()
        avatarImageView.backgroundColor = .gray
        avatarImageView.image = .image //UIImage(named: "Image")
        avatarImageView.frame = CGRect(x: 25,
                                       y: 110,
                                       width: 110,
                                       height: 110)
        view.addSubview(avatarImageView)
        
        let editButton = UIButton(frame: CGRect(x: 25, y: 250, width: 380 , height: 50))
        editButton.setTitle("Редактировать профиль", for: .normal)
        editButton.setTitleColor(.white, for: .normal)
        editButton.backgroundColor = .black
        editButton.titleLabel?.font = UIFont.systemFont(
            ofSize: 20,
            weight: .regular
        )
        view.addSubview(editButton)
        
        let aboutLabel = UILabel()
        aboutLabel.text = "О себе"
        aboutLabel.textColor = .black
        aboutLabel.font = UIFont.systemFont(ofSize: 30)
        aboutLabel.frame = CGRect(x: 25,
                                y: 320,
                                width: 300,
                                height: 50)
        view.addSubview(aboutLabel)
        
        let aboutTextLabel = UILabel()
        aboutTextLabel.numberOfLines = 0
        aboutTextLabel.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
        aboutTextLabel.textColor = .black
        aboutTextLabel.font = UIFont.systemFont(ofSize: 25)
        aboutTextLabel.frame = CGRect(x: 25,
                                y: 320,
                                width: 300,
                                height: 250)
        view.addSubview(aboutTextLabel)
        
        let deleteButton = UIButton(frame: CGRect(x: 25, y: 550, width: 380 , height: 50))
        deleteButton.setTitle("Удалить данные", for: .normal)
        deleteButton.setTitleColor(.white, for: .normal)
        deleteButton.backgroundColor = .red
        deleteButton.titleLabel?.font = UIFont.systemFont(
            ofSize: 20,
            weight: .regular
        )
        view.addSubview(deleteButton)
        
        let pictureImageView = UIImageView()
        pictureImageView.backgroundColor = .gray
        pictureImageView.image = .rock
        pictureImageView.frame = CGRect(x: 25,
                                       y: 630,
                                       width: 380,
                                       height: 210)
        view.addSubview(pictureImageView)
        
    }


}
 
