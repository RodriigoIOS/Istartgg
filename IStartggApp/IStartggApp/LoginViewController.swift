//
//  LoginViewController.swift
//  IStartggApp
//
//  Created by Rodrigo on 13/11/24.
//  First screen for shows to user.

import UIKit

class LoginViewController: UIViewController {
    
    var loginLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "Login"
        label.font = UIFont(name: "system", size: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var passwordLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "Senha"
        label.font = UIFont(name: "system", size: 10)
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var loginTextField: UITextField = {
        let textfield = UITextField(frame: .zero)
        textfield.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textfield.frame.height))
        textfield.leftViewMode = .always
        textfield.clipsToBounds = true
        textfield.backgroundColor = .systemBackground
        textfield.layer.cornerRadius = 5
        textfield.placeholder = "Insert email"
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    
    var passwordTextField: UITextField = {
        let textfield = UITextField(frame: .zero)
        textfield.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textfield.frame.height))
        textfield.leftViewMode = .always
        textfield.clipsToBounds = true
        textfield.backgroundColor = .systemBackground
        textfield.layer.cornerRadius = 5
        textfield.placeholder = "Insert Password"
        textfield.isSecureTextEntry = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    
    var buttonLogin: UIButton = {
        let button = UIButton(frame: .zero)
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemBackground
        button.clipsToBounds = true
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(LoginViewController.self, action: #selector(actionButton), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        navigationItem.title = "Login Screen"
        
        addSubview()
        setConstraints()
    }

    func addSubview(){
        view.addSubview(loginLabel)
        view.addSubview(passwordLabel)
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
        view.addSubview(buttonLogin)
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            
            loginLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            loginLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginLabel.widthAnchor.constraint(equalToConstant: 60),
            loginLabel.heightAnchor.constraint(equalToConstant: 35),
            
            passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            passwordLabel.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 10),
            passwordLabel.widthAnchor.constraint(equalToConstant: 60),
            passwordLabel.heightAnchor.constraint(equalToConstant: 35),
            
            loginTextField.leadingAnchor.constraint(equalTo: loginLabel.trailingAnchor, constant: 10),
            loginTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            loginTextField.heightAnchor.constraint(equalToConstant: 35),
            
            passwordTextField.leadingAnchor.constraint(equalTo: passwordLabel.trailingAnchor, constant: 10),
            passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 10),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            passwordTextField.heightAnchor.constraint(equalToConstant: 35),
            
//            buttonLogin.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            buttonLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonLogin.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 25),
            buttonLogin.widthAnchor.constraint(equalToConstant: 75),
            buttonLogin.heightAnchor.constraint(equalToConstant: 35)
            
        ])
    }
    
    @objc func actionButton (){
        print("Login: \(loginTextField.text ?? "") / Senha: \(passwordTextField.text ?? "")")
    }
}

