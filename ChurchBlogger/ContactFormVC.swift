//
//  ContactFormVC.swift
//  ChurchBlogger
//
//  Created by Joel on 2/4/17.
//  Copyright © 2017 Joel Pratt. All rights reserved.
//

import Foundation
import UIKit
import MessageUI

class ContactFormVC: UIViewController, MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var messageTextField: UITextField!
    
    
    @IBAction func sendContactInfo(_ sender: Any) {
        
        let recipients = ["pratt.joel@gmail.com"]
        
        let mailController = MFMailComposeViewController()
        
        mailController.mailComposeDelegate = self
        mailController.setToRecipients(recipients)
        mailController.setSubject("\(nameTextField.text!) Communication Card")
        
        mailController.setMessageBody("Name: \(nameTextField.text!) /n/nEmail:\(emailTextField.text!) \n\nMessage: \(messageTextField.text)", isHTML: false)
    }
}
