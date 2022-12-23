//
//  DataDelegate.swift
//  Week_3_Homework_1
//
//  Created by Mahmut Yazar on 23.12.2022.
//

import Foundation

protocol NameSurnameDelegate: AnyObject {
    func nameSurnameReady(data: String)
}

protocol AgeDelegate: AnyObject {
    func ageReady(data: String)
}

protocol CountryDelegate: AnyObject {
    func countryReady(data: String)
}
