//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import SotoCore

/// Error enum for IoTSiteWise
public enum IoTSiteWiseErrorType: AWSErrorType {
    case conflictingOperationException(message: String?)
    case internalFailureException(message: String?)
    case invalidRequestException(message: String?)
    case limitExceededException(message: String?)
    case resourceAlreadyExistsException(message: String?)
    case resourceNotFoundException(message: String?)
    case serviceUnavailableException(message: String?)
    case throttlingException(message: String?)
    case tooManyTagsException(message: String?)
}

extension IoTSiteWiseErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ConflictingOperationException":
            self = .conflictingOperationException(message: message)
        case "InternalFailureException":
            self = .internalFailureException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ResourceAlreadyExistsException":
            self = .resourceAlreadyExistsException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        case "TooManyTagsException":
            self = .tooManyTagsException(message: message)
        default:
            return nil
        }
    }
}

extension IoTSiteWiseErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .conflictingOperationException(let message):
            return "ConflictingOperationException: \(message ?? "")"
        case .internalFailureException(let message):
            return "InternalFailureException: \(message ?? "")"
        case .invalidRequestException(let message):
            return "InvalidRequestException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .resourceAlreadyExistsException(let message):
            return "ResourceAlreadyExistsException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .serviceUnavailableException(let message):
            return "ServiceUnavailableException: \(message ?? "")"
        case .throttlingException(let message):
            return "ThrottlingException: \(message ?? "")"
        case .tooManyTagsException(let message):
            return "TooManyTagsException: \(message ?? "")"
        }
    }
}
