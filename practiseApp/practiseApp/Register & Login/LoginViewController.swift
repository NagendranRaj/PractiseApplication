//
//  LoginViewController.swift
//  practiseApp
//
//  Created by systimanx on 28/05/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func loginButton(_ sender: Any) {
        guard let email = emailTextField.text, let password = passwordTextField.text else {
                    print("Enter both values")
                    return
                }
                
                guard let url = URL(string: "https://systimanx.xyz/laravel-starter-kit/public/api/v1/auth/login") else {return}
                
                let session = URLSession.shared
                var request = URLRequest(url: url)
                request.httpMethod = "POST"
                let postData = "email=\(email)&password=\(password)&grant_type=password".data(using: .utf8)
                request.httpBody = postData
                let webTask = session.dataTask(with: request, completionHandler: {data, response, error in
                    guard error == nil else {
                        print(error?.localizedDescription ?? "Response Error")
                        return
                    }
                    guard let serverData = data else {
                        print("server data error")
                        return
                    }
                    do {
                        if let requestJson = try JSONSerialization.jsonObject(with: serverData, options: .mutableContainers) as? [String: Any]{
                            print("Response: \(requestJson)")
                            if requestJson["status"] as! Int == 1 {
                                DispatchQueue.main.async {
                                    self.performSegue(withIdentifier: "ToWelcomeScreen", sender: nil)
                                    
                                }
                                
                            } else if let messages = requestJson["message"] as? [String] {
                                var message = ""
                                for aValue in messages {
                                    message.append(aValue)
                                    message.append("\n")
                                }
                                self.showMessage(message)
                            } else if let message = requestJson["message"] as? String {
                                print(message)
                                self.showMessage(message) { (action) in
                                    self.dismiss(animated: true, completion: nil)
                                }
                            }
                            
                            }
                        
                        
                    } catch let responseError {
                        print("Serialisation in error in creating response body: \(responseError.localizedDescription)")
                        let message = String(bytes: serverData, encoding: .ascii)
                        print(message as Any)
                    }
                    
                })
                
                webTask.resume()
            }
        
    }

extension LoginViewController {
    
    func showMessage(_ message: String, handler: ((UIAlertAction) -> Void)? = nil) {
           DispatchQueue.main.async {
               let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
               let doneAction = UIAlertAction(title: " Done", style: .default, handler: handler)
               alert.addAction(doneAction)
               self.present(alert, animated: true)

        }
    }
}
    
    
    

