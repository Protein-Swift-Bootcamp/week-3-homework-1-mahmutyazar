//
//  DataDelegate.swift
//  Week_3_Homework_1
//
//  Created by Mahmut Yazar on 23.12.2022.
//

import Foundation

protocol Delegate: AnyObject {
    func nameSurnameReady(data: String)
    func ageReady(data: String)
    func countryReady(data: String)
}
