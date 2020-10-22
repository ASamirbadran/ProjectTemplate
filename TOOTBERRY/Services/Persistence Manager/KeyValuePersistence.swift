//
//  KeyValuePersistence.swift
//  TOOTBERRY
//
//  Created by Ahmed Samir on 10/21/20.
//

import Foundation

public class PersistenceKeyBase {
}

#if DEBUG
private struct Statics {
    static var registeredKeys = Set<String>()
}
#endif

public final class PersistenceKey<Type>: PersistenceKeyBase {
    public let key: String
    public let defaultValue: Type

    public init(key: String, defaultValue: Type) {
        self.key = key
        self.defaultValue = defaultValue

        #if DEBUG
        if Statics.registeredKeys.contains(key) {
            fatalError("PersistenceKey '\(key)' is registered multiple times")
        }
        Statics.registeredKeys.insert(key)
        #endif
    }

    fileprivate init(_ key: String, _ defaultValue: Type) {
        self.key = key
        self.defaultValue = defaultValue
    }
}

public protocol KeyValuePersistence {

    static func valueForKey<T>(_ key: PersistenceKey<T>) -> T
    static func setValue<T>(_ value: T?, forKey key: PersistenceKey<T>)
    static func removeValueForKey<T>(_ key: PersistenceKey<T?>)
}
