//
//  File.swift
//  
//
//  Created by Leon Langhauser on 26.06.22.
//

// MARK: - SignIn with Apple Erors
enum SignInWithAppleAuthError: Error {
    case noAuthDataResult
    case noIdentityToken
    case noIdTokenString
    case noAppleIDCredential
}
extension SignInWithAppleAuthError: LocalizedError {
    // This will provide me with a specific localized description for the SignInWithAppleAuthError
    var errorDescription: String? {
        switch self {
        case .noAuthDataResult:
            return NSLocalizedString("No Auth Data Result", comment: "")
        case .noIdentityToken:
            return NSLocalizedString("Unable to fetch identity token", comment: "")
        case .noIdTokenString:
            return NSLocalizedString("Unable to serialize token string from data", comment: "")
        case .noAppleIDCredential:
            return NSLocalizedString("Unable to create Apple ID Credential", comment: "")
        }
    }
}
// MARK: - Signin in with email errors
enum EmailAuthError: Error {
    case incorrectPassword
    case invalidEmail
    case accoundDoesNotExist
    case unknownError
    case couldNotCreate
    case extraDataNotCreated
}
extension EmailAuthError: LocalizedError {
    // This will provide me with a specific localized description for the EmailAuthError
    var errorDescription: String? {
        switch self {
        case .incorrectPassword:
            return NSLocalizedString("Nicht Richtiges Passwort für denn Account", comment: "")
        case .invalidEmail:
             return NSLocalizedString("Keine Richtige Email Addresse für denn account.", comment: "")
        case .accoundDoesNotExist:
            return NSLocalizedString("Keine gültige E-Mail-Adresse. Dieser Account existiert nicht.", comment: "")
        case .unknownError:
            return NSLocalizedString("Unbekannter Fehler, einloggen nicht möglich.", comment: "")
        case .couldNotCreate:
            return NSLocalizedString("Kann kein Benutzer erstellen gerade.", comment: "")
        case .extraDataNotCreated:
            return NSLocalizedString("Kann nicht vollen Benutzername speichern.", comment: "")
        }
    }
}

