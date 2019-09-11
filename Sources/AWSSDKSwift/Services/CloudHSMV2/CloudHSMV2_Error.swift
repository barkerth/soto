// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for CloudHSMV2
public enum CloudHSMV2ErrorType: AWSErrorType {
    case cloudHsmAccessDeniedException(message: String?)
    case cloudHsmInternalFailureException(message: String?)
    case cloudHsmInvalidRequestException(message: String?)
    case cloudHsmResourceNotFoundException(message: String?)
    case cloudHsmServiceException(message: String?)
}

extension CloudHSMV2ErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "CloudHsmAccessDeniedException":
            self = .cloudHsmAccessDeniedException(message: message)
        case "CloudHsmInternalFailureException":
            self = .cloudHsmInternalFailureException(message: message)
        case "CloudHsmInvalidRequestException":
            self = .cloudHsmInvalidRequestException(message: message)
        case "CloudHsmResourceNotFoundException":
            self = .cloudHsmResourceNotFoundException(message: message)
        case "CloudHsmServiceException":
            self = .cloudHsmServiceException(message: message)
        default:
            return nil
        }
    }
}

extension CloudHSMV2ErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .cloudHsmAccessDeniedException(let message):
            return "CloudHsmAccessDeniedException: \(message ?? "")"
        case .cloudHsmInternalFailureException(let message):
            return "CloudHsmInternalFailureException: \(message ?? "")"
        case .cloudHsmInvalidRequestException(let message):
            return "CloudHsmInvalidRequestException: \(message ?? "")"
        case .cloudHsmResourceNotFoundException(let message):
            return "CloudHsmResourceNotFoundException: \(message ?? "")"
        case .cloudHsmServiceException(let message):
            return "CloudHsmServiceException: \(message ?? "")"
        }
    }
}
