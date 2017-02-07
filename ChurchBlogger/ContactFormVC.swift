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
        
        mailController.setMessageBody("Name: \(nameTextField.text!) \n\nEmail:\(emailTextField.text!) \n\nMessage: \(messageTextField.text!)", isHTML: false)
        
        self.present(mailController, animated: true, completion: nil)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        switch result.rawValue {
        case MFMailComposeResult.cancelled.rawValue:
            print("cancelled")
        case MFMailComposeResult.failed.rawValue:
            print("failed")
        case MFMailComposeResult.saved.rawValue:
            print("saved")
        case MFMailComposeResult.sent.rawValue:
            print("sent")
        default:
            break
        }
        
        self.dismiss(animated: true, completion: nil)
    }
}
