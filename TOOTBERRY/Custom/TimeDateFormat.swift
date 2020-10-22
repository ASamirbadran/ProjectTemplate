//
//  TimeDateFormat.swift
//  TOOTBERRY
//
//  Created by Ahmed Samir on 10/8/19.
//  Copyright © 2019 Ibtikar Technologies. All rights reserved.
//

import Foundation
class TimeDateFormat {
    class func convertTimeToString(date: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        let preferredLanguage = LanguageManager.currentLanguage()
        formatter.locale = Locale(identifier: preferredLanguage)

        if formatter.date(from: date) != nil {
            let yourDate = formatter.date(from: date) ?? Date()
            formatter.dateFormat = "h:mm a"
            let myStringafd = formatter.string(from: yourDate)
            return myStringafd
        } else {
            return ""
        }
    }

    class func convertDayFormat(date: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE"
        let preferredLanguage = LanguageManager.currentLanguage()
        formatter.locale = Locale(identifier: preferredLanguage)

        if formatter.date(from: date) != nil {
            let yourDate = formatter.date(from: date) ?? Date()
            formatter.dateFormat = "EE"
            let myStringafd = formatter.string(from: yourDate)
            return myStringafd
        } else {
            return ""
        }
    }

    class func convertDayDateFormat(date: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let preferredLanguage = LanguageManager.getDeviceLocal()

        if(preferredLanguage == "ar") {
            formatter.locale = Locale(identifier: "ar_EG")
        } else {
            formatter.locale = Locale(identifier: "en_US")

        }

        if formatter.date(from: date) != nil {
            let yourDate = formatter.date(from: date) ?? Date()
            formatter.dateFormat = "MMM d"
            let myStringafd = formatter.string(from: yourDate)
            return myStringafd
        } else {
            return ""
        }
    }

    class func convertSimpleDayFormat(date: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let preferredLanguage = LanguageManager.getDeviceLocal()

        if(preferredLanguage == "ar") {
            formatter.locale = Locale(identifier: "ar_EG")
        } else {
            formatter.locale = Locale(identifier: "en_US")

        }

        if formatter.date(from: date) != nil {
            let yourDate = formatter.date(from: date) ?? Date()
            formatter.dateFormat = "dd/MM"
            let myStringafd = formatter.string(from: yourDate)
            return myStringafd
        } else {
            return ""
        }
    }

    class func convertDateTimeFormat(date: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let preferredLanguage = LanguageManager.getDeviceLocal()

        if(preferredLanguage == "ar") {
            formatter.locale = Locale(identifier: "ar_EG")
        } else {
            formatter.locale = Locale(identifier: "en_US")

        }

        if formatter.date(from: date) != nil {
            let yourDate = formatter.date(from: date) ?? Date()
            formatter.dateFormat = "dd/MM/yyyy h:mm a"
            let myStringafd = formatter.string(from: yourDate)
            return myStringafd
        } else {
            return ""
        }
    }

    class func castTimeStampToDate(date: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let preferredLanguage = LanguageManager.getDeviceLocal()

        if(preferredLanguage == "ar") {
            formatter.locale = Locale(identifier: "ar_EG")
        } else {
            formatter.locale = Locale(identifier: "en_US")

        }

        if formatter.date(from: date) != nil {
            let yourDate = formatter.date(from: date) ?? Date()
            formatter.dateFormat = "dd/MM/yyyy"
            let myStringafd = formatter.string(from: yourDate)
            return myStringafd
        } else {
            return ""
        }
    }

    class func castTimeStampToTime(date: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let preferredLanguage = LanguageManager.getDeviceLocal()

        if(preferredLanguage == "ar") {
            formatter.locale = Locale(identifier: "ar_EG")
        } else {
            formatter.locale = Locale(identifier: "en_US")

        }

        if formatter.date(from: date) != nil {
            let yourDate = formatter.date(from: date) ?? Date()
            formatter.dateFormat = "h:mm a"
            let myStringafd = formatter.string(from: yourDate)
            return myStringafd
        } else {
            return ""
        }
    }
}
