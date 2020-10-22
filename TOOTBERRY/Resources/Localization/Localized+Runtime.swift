import Foundation

extension L10n {
    static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
        let format = NSLocalizedString("\(key)",
                                       tableName: "\(table)",
                                       bundle: Bundle(for: BundleToken.self),
                                       comment: "")
        return String(format: format, locale: Locale.current, arguments: args)
    }
}
private final class BundleToken {}
