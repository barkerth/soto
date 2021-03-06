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

/// Error enum for Polly
public enum PollyErrorType: AWSErrorType {
    case engineNotSupportedException(message: String?)
    case invalidLexiconException(message: String?)
    case invalidNextTokenException(message: String?)
    case invalidS3BucketException(message: String?)
    case invalidS3KeyException(message: String?)
    case invalidSampleRateException(message: String?)
    case invalidSnsTopicArnException(message: String?)
    case invalidSsmlException(message: String?)
    case invalidTaskIdException(message: String?)
    case languageNotSupportedException(message: String?)
    case lexiconNotFoundException(message: String?)
    case lexiconSizeExceededException(message: String?)
    case marksNotSupportedForFormatException(message: String?)
    case maxLexemeLengthExceededException(message: String?)
    case maxLexiconsNumberExceededException(message: String?)
    case serviceFailureException(message: String?)
    case ssmlMarksNotSupportedForTextTypeException(message: String?)
    case synthesisTaskNotFoundException(message: String?)
    case textLengthExceededException(message: String?)
    case unsupportedPlsAlphabetException(message: String?)
    case unsupportedPlsLanguageException(message: String?)
}

extension PollyErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "EngineNotSupportedException":
            self = .engineNotSupportedException(message: message)
        case "InvalidLexiconException":
            self = .invalidLexiconException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "InvalidS3BucketException":
            self = .invalidS3BucketException(message: message)
        case "InvalidS3KeyException":
            self = .invalidS3KeyException(message: message)
        case "InvalidSampleRateException":
            self = .invalidSampleRateException(message: message)
        case "InvalidSnsTopicArnException":
            self = .invalidSnsTopicArnException(message: message)
        case "InvalidSsmlException":
            self = .invalidSsmlException(message: message)
        case "InvalidTaskIdException":
            self = .invalidTaskIdException(message: message)
        case "LanguageNotSupportedException":
            self = .languageNotSupportedException(message: message)
        case "LexiconNotFoundException":
            self = .lexiconNotFoundException(message: message)
        case "LexiconSizeExceededException":
            self = .lexiconSizeExceededException(message: message)
        case "MarksNotSupportedForFormatException":
            self = .marksNotSupportedForFormatException(message: message)
        case "MaxLexemeLengthExceededException":
            self = .maxLexemeLengthExceededException(message: message)
        case "MaxLexiconsNumberExceededException":
            self = .maxLexiconsNumberExceededException(message: message)
        case "ServiceFailureException":
            self = .serviceFailureException(message: message)
        case "SsmlMarksNotSupportedForTextTypeException":
            self = .ssmlMarksNotSupportedForTextTypeException(message: message)
        case "SynthesisTaskNotFoundException":
            self = .synthesisTaskNotFoundException(message: message)
        case "TextLengthExceededException":
            self = .textLengthExceededException(message: message)
        case "UnsupportedPlsAlphabetException":
            self = .unsupportedPlsAlphabetException(message: message)
        case "UnsupportedPlsLanguageException":
            self = .unsupportedPlsLanguageException(message: message)
        default:
            return nil
        }
    }
}

extension PollyErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .engineNotSupportedException(let message):
            return "EngineNotSupportedException: \(message ?? "")"
        case .invalidLexiconException(let message):
            return "InvalidLexiconException: \(message ?? "")"
        case .invalidNextTokenException(let message):
            return "InvalidNextTokenException: \(message ?? "")"
        case .invalidS3BucketException(let message):
            return "InvalidS3BucketException: \(message ?? "")"
        case .invalidS3KeyException(let message):
            return "InvalidS3KeyException: \(message ?? "")"
        case .invalidSampleRateException(let message):
            return "InvalidSampleRateException: \(message ?? "")"
        case .invalidSnsTopicArnException(let message):
            return "InvalidSnsTopicArnException: \(message ?? "")"
        case .invalidSsmlException(let message):
            return "InvalidSsmlException: \(message ?? "")"
        case .invalidTaskIdException(let message):
            return "InvalidTaskIdException: \(message ?? "")"
        case .languageNotSupportedException(let message):
            return "LanguageNotSupportedException: \(message ?? "")"
        case .lexiconNotFoundException(let message):
            return "LexiconNotFoundException: \(message ?? "")"
        case .lexiconSizeExceededException(let message):
            return "LexiconSizeExceededException: \(message ?? "")"
        case .marksNotSupportedForFormatException(let message):
            return "MarksNotSupportedForFormatException: \(message ?? "")"
        case .maxLexemeLengthExceededException(let message):
            return "MaxLexemeLengthExceededException: \(message ?? "")"
        case .maxLexiconsNumberExceededException(let message):
            return "MaxLexiconsNumberExceededException: \(message ?? "")"
        case .serviceFailureException(let message):
            return "ServiceFailureException: \(message ?? "")"
        case .ssmlMarksNotSupportedForTextTypeException(let message):
            return "SsmlMarksNotSupportedForTextTypeException: \(message ?? "")"
        case .synthesisTaskNotFoundException(let message):
            return "SynthesisTaskNotFoundException: \(message ?? "")"
        case .textLengthExceededException(let message):
            return "TextLengthExceededException: \(message ?? "")"
        case .unsupportedPlsAlphabetException(let message):
            return "UnsupportedPlsAlphabetException: \(message ?? "")"
        case .unsupportedPlsLanguageException(let message):
            return "UnsupportedPlsLanguageException: \(message ?? "")"
        }
    }
}
