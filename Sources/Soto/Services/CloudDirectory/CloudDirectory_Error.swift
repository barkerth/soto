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

/// Error enum for CloudDirectory
public enum CloudDirectoryErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case batchWriteException(message: String?)
    case cannotListParentOfRootException(message: String?)
    case directoryAlreadyExistsException(message: String?)
    case directoryDeletedException(message: String?)
    case directoryNotDisabledException(message: String?)
    case directoryNotEnabledException(message: String?)
    case facetAlreadyExistsException(message: String?)
    case facetInUseException(message: String?)
    case facetNotFoundException(message: String?)
    case facetValidationException(message: String?)
    case incompatibleSchemaException(message: String?)
    case indexedAttributeMissingException(message: String?)
    case internalServiceException(message: String?)
    case invalidArnException(message: String?)
    case invalidAttachmentException(message: String?)
    case invalidFacetUpdateException(message: String?)
    case invalidNextTokenException(message: String?)
    case invalidRuleException(message: String?)
    case invalidSchemaDocException(message: String?)
    case invalidTaggingRequestException(message: String?)
    case limitExceededException(message: String?)
    case linkNameAlreadyInUseException(message: String?)
    case notIndexException(message: String?)
    case notNodeException(message: String?)
    case notPolicyException(message: String?)
    case objectAlreadyDetachedException(message: String?)
    case objectNotDetachedException(message: String?)
    case resourceNotFoundException(message: String?)
    case retryableConflictException(message: String?)
    case schemaAlreadyExistsException(message: String?)
    case schemaAlreadyPublishedException(message: String?)
    case stillContainsLinksException(message: String?)
    case unsupportedIndexTypeException(message: String?)
    case validationException(message: String?)
}

extension CloudDirectoryErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "BatchWriteException":
            self = .batchWriteException(message: message)
        case "CannotListParentOfRootException":
            self = .cannotListParentOfRootException(message: message)
        case "DirectoryAlreadyExistsException":
            self = .directoryAlreadyExistsException(message: message)
        case "DirectoryDeletedException":
            self = .directoryDeletedException(message: message)
        case "DirectoryNotDisabledException":
            self = .directoryNotDisabledException(message: message)
        case "DirectoryNotEnabledException":
            self = .directoryNotEnabledException(message: message)
        case "FacetAlreadyExistsException":
            self = .facetAlreadyExistsException(message: message)
        case "FacetInUseException":
            self = .facetInUseException(message: message)
        case "FacetNotFoundException":
            self = .facetNotFoundException(message: message)
        case "FacetValidationException":
            self = .facetValidationException(message: message)
        case "IncompatibleSchemaException":
            self = .incompatibleSchemaException(message: message)
        case "IndexedAttributeMissingException":
            self = .indexedAttributeMissingException(message: message)
        case "InternalServiceException":
            self = .internalServiceException(message: message)
        case "InvalidArnException":
            self = .invalidArnException(message: message)
        case "InvalidAttachmentException":
            self = .invalidAttachmentException(message: message)
        case "InvalidFacetUpdateException":
            self = .invalidFacetUpdateException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "InvalidRuleException":
            self = .invalidRuleException(message: message)
        case "InvalidSchemaDocException":
            self = .invalidSchemaDocException(message: message)
        case "InvalidTaggingRequestException":
            self = .invalidTaggingRequestException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "LinkNameAlreadyInUseException":
            self = .linkNameAlreadyInUseException(message: message)
        case "NotIndexException":
            self = .notIndexException(message: message)
        case "NotNodeException":
            self = .notNodeException(message: message)
        case "NotPolicyException":
            self = .notPolicyException(message: message)
        case "ObjectAlreadyDetachedException":
            self = .objectAlreadyDetachedException(message: message)
        case "ObjectNotDetachedException":
            self = .objectNotDetachedException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "RetryableConflictException":
            self = .retryableConflictException(message: message)
        case "SchemaAlreadyExistsException":
            self = .schemaAlreadyExistsException(message: message)
        case "SchemaAlreadyPublishedException":
            self = .schemaAlreadyPublishedException(message: message)
        case "StillContainsLinksException":
            self = .stillContainsLinksException(message: message)
        case "UnsupportedIndexTypeException":
            self = .unsupportedIndexTypeException(message: message)
        case "ValidationException":
            self = .validationException(message: message)
        default:
            return nil
        }
    }
}

extension CloudDirectoryErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .accessDeniedException(let message):
            return "AccessDeniedException: \(message ?? "")"
        case .batchWriteException(let message):
            return "BatchWriteException: \(message ?? "")"
        case .cannotListParentOfRootException(let message):
            return "CannotListParentOfRootException: \(message ?? "")"
        case .directoryAlreadyExistsException(let message):
            return "DirectoryAlreadyExistsException: \(message ?? "")"
        case .directoryDeletedException(let message):
            return "DirectoryDeletedException: \(message ?? "")"
        case .directoryNotDisabledException(let message):
            return "DirectoryNotDisabledException: \(message ?? "")"
        case .directoryNotEnabledException(let message):
            return "DirectoryNotEnabledException: \(message ?? "")"
        case .facetAlreadyExistsException(let message):
            return "FacetAlreadyExistsException: \(message ?? "")"
        case .facetInUseException(let message):
            return "FacetInUseException: \(message ?? "")"
        case .facetNotFoundException(let message):
            return "FacetNotFoundException: \(message ?? "")"
        case .facetValidationException(let message):
            return "FacetValidationException: \(message ?? "")"
        case .incompatibleSchemaException(let message):
            return "IncompatibleSchemaException: \(message ?? "")"
        case .indexedAttributeMissingException(let message):
            return "IndexedAttributeMissingException: \(message ?? "")"
        case .internalServiceException(let message):
            return "InternalServiceException: \(message ?? "")"
        case .invalidArnException(let message):
            return "InvalidArnException: \(message ?? "")"
        case .invalidAttachmentException(let message):
            return "InvalidAttachmentException: \(message ?? "")"
        case .invalidFacetUpdateException(let message):
            return "InvalidFacetUpdateException: \(message ?? "")"
        case .invalidNextTokenException(let message):
            return "InvalidNextTokenException: \(message ?? "")"
        case .invalidRuleException(let message):
            return "InvalidRuleException: \(message ?? "")"
        case .invalidSchemaDocException(let message):
            return "InvalidSchemaDocException: \(message ?? "")"
        case .invalidTaggingRequestException(let message):
            return "InvalidTaggingRequestException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .linkNameAlreadyInUseException(let message):
            return "LinkNameAlreadyInUseException: \(message ?? "")"
        case .notIndexException(let message):
            return "NotIndexException: \(message ?? "")"
        case .notNodeException(let message):
            return "NotNodeException: \(message ?? "")"
        case .notPolicyException(let message):
            return "NotPolicyException: \(message ?? "")"
        case .objectAlreadyDetachedException(let message):
            return "ObjectAlreadyDetachedException: \(message ?? "")"
        case .objectNotDetachedException(let message):
            return "ObjectNotDetachedException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .retryableConflictException(let message):
            return "RetryableConflictException: \(message ?? "")"
        case .schemaAlreadyExistsException(let message):
            return "SchemaAlreadyExistsException: \(message ?? "")"
        case .schemaAlreadyPublishedException(let message):
            return "SchemaAlreadyPublishedException: \(message ?? "")"
        case .stillContainsLinksException(let message):
            return "StillContainsLinksException: \(message ?? "")"
        case .unsupportedIndexTypeException(let message):
            return "UnsupportedIndexTypeException: \(message ?? "")"
        case .validationException(let message):
            return "ValidationException: \(message ?? "")"
        }
    }
}
