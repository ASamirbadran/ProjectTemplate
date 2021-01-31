//
//  LanguageManager.swift
//  ProjectTemplate
//
//  Created by Ahmed Samir on 9/18/19.
//  Copyright © 2019 Ibtikar Technologies. All rights reserved.
//

import Foundation
class LanguageManager {
    class func getDeviceLocal() -> String {
        let preferredLanguage = Locale.preferredLanguages[0] as String
        print(preferredLanguage) //en-US

        let arr = preferredLanguage.components(separatedBy: "-")
        let deviceLanguage = arr.first ?? "ar"
        return deviceLanguage
    }

    class func currentLanguage() -> String {
        let def = UserDefaults.standard
        let  langs = def.object(forKey: "AppleLanguages") as? NSArray
        let firstLang = langs?.firstObject as?  String
        return  firstLang ?? "en"
    }
}
