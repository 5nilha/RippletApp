//
//  User.swift
//  Ripplet
//
//  Created by Fabio Quintanilha on 1/9/18.
//  Copyright © 2018 Ripplet. All rights reserved.
//

import Foundation

struct User {
    
    var userID: String?
    var firstName: String!
    var lastName: String!
    var username: String!
    var emailAddress: String!
    var phoneNumber: String!
    var zipCode: String!
    var dateRegistered: Date!
    var about: String?
    var gender: String?
    var birthDate: Date?
    var newsletterSubscriber: Bool!
    
    //The user data is converted to a dictionary to be passed to the firestore
    var dictionary : [String : Any] {
        return [ DataDocumentFields.first_name.rawValue : firstName,
                DataDocumentFields.last_name.rawValue : lastName,
                DataDocumentFields.username.rawValue : username,
                DataDocumentFields.email_address.rawValue : emailAddress,
                DataDocumentFields.phone_number.rawValue : phoneNumber,
                DataDocumentFields.zip_code.rawValue : zipCode,
                DataDocumentFields.date_registered.rawValue : dateRegistered,
                DataDocumentFields.newsletter_subscriber.rawValue : newsletterSubscriber ]
    }
    
    
    init(firstName: String, lastName: String, username: String, emailAddress: String, phoneNumber: String, zipCode: String, newsletterSubscriber: Bool) {
        self.firstName = firstName
        self.lastName = lastName
        self.username = username
        self.emailAddress = emailAddress
        self.phoneNumber = phoneNumber
        self.zipCode = zipCode
        self.dateRegistered = Date()
        self.newsletterSubscriber = newsletterSubscriber
    }
    
    init(userID: String, firstName: String, lastName: String, username: String, emailAddress: String, phoneNumber: String, zipCode: String, newsletterSubscriber: Bool) {
        self.userID = userID
        self.firstName = firstName
        self.lastName = lastName
        self.username = username
        self.emailAddress = emailAddress
        self.phoneNumber = phoneNumber
        self.zipCode = zipCode
        self.dateRegistered = Date()
        self.newsletterSubscriber = newsletterSubscriber
    }
    
}
