//
//  ViewController.swift
//  MyApp
//
//  Created by Aleksei Naumyshev on 22.12.2025.
//

import UIKit

class ViewController: UIViewController {
    
    var image: UIImageView = {
        let imageView = UIImageView()
        imageView.image = .img
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 20
        imageView.clipsToBounds = true
        return imageView
    }()
    
    var messageLebel: UILabel = {
        let label = UILabel()
        label.text = "Сообщение"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 30, weight: .bold)
        return label
    }()
    
    lazy var emailField = creteTextField(placeholder: "Email")
    lazy var topicField = creteTextField(placeholder: "Тема")
    
    var contextLebel: UILabel = {
        let label = UILabel()
        label.text = "Содержание"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 25, weight: .thin)
        return label
    }()
    
    var textEdit: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.backgroundColor = .lightGray
        textView.layer.cornerRadius = 20
        textView.font = .systemFont(ofSize: 16)
        return textView
    } ()
    
    var sendButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Отправить", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .black
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.layer.cornerRadius = 20
        return btn
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(image)
        view.addSubview(messageLebel)
        view.addSubview(emailField)
        view.addSubview(topicField)
        view.addSubview(contextLebel)
        view.addSubview(textEdit)
        view.addSubview(sendButton)
        
        createConstraints()
    }
    
    private func createConstraints() {
        NSLayoutConstraint.activate([
            // Constraints for image
            image.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            image.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            image.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            image.heightAnchor.constraint(equalToConstant: 350),
            // Constraints for messageLebel
            messageLebel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            messageLebel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            messageLebel.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 20),
            // Constraints for emailField
            emailField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            emailField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            emailField.topAnchor.constraint(equalTo: messageLebel.bottomAnchor, constant: 20),
            // Constraints for topicField
            topicField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            topicField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            topicField.topAnchor.constraint(equalTo: emailField.bottomAnchor, constant: 20),
            // Constraints for contextLabel
            contextLebel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            contextLebel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            contextLebel.topAnchor.constraint(equalTo: topicField.bottomAnchor, constant: 20),
            // Constraints for textEdit
            textEdit.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            textEdit.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            textEdit.topAnchor.constraint(equalTo: contextLebel.bottomAnchor, constant: 20),
            textEdit.heightAnchor.constraint(equalToConstant: 100),
            // Constraints for button
            sendButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            sendButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            sendButton.heightAnchor.constraint(equalToConstant: 50),
            sendButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            
            
        ])
    }
    
    private func creteTextField(placeholder: String, height: CGFloat = 50) -> UITextField {
        let textField = UITextField()
        textField.placeholder = placeholder
        textField.backgroundColor = .lightGray
        textField.layer.cornerRadius = 25
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.heightAnchor.constraint(equalToConstant: height).isActive = true
        
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        textField.leftViewMode = .always
        
        textField.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        textField.rightViewMode = .always
        
        
        
        return textField
    }

}
 
