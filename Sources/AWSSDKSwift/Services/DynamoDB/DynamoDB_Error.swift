// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for DynamoDB
public enum DynamoDBErrorType: AWSErrorType {
    case backupInUseException(message: String?)
    case backupNotFoundException(message: String?)
    case conditionalCheckFailedException(message: String?)
    case continuousBackupsUnavailableException(message: String?)
    case globalTableAlreadyExistsException(message: String?)
    case globalTableNotFoundException(message: String?)
    case idempotentParameterMismatchException(message: String?)
    case indexNotFoundException(message: String?)
    case internalServerError(message: String?)
    case invalidRestoreTimeException(message: String?)
    case itemCollectionSizeLimitExceededException(message: String?)
    case limitExceededException(message: String?)
    case pointInTimeRecoveryUnavailableException(message: String?)
    case provisionedThroughputExceededException(message: String?)
    case replicaAlreadyExistsException(message: String?)
    case replicaNotFoundException(message: String?)
    case requestLimitExceeded(message: String?)
    case resourceInUseException(message: String?)
    case resourceNotFoundException(message: String?)
    case tableAlreadyExistsException(message: String?)
    case tableInUseException(message: String?)
    case tableNotFoundException(message: String?)
    case transactionCanceledException(message: String?)
    case transactionConflictException(message: String?)
    case transactionInProgressException(message: String?)
}

extension DynamoDBErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "BackupInUseException":
            self = .backupInUseException(message: message)
        case "BackupNotFoundException":
            self = .backupNotFoundException(message: message)
        case "ConditionalCheckFailedException":
            self = .conditionalCheckFailedException(message: message)
        case "ContinuousBackupsUnavailableException":
            self = .continuousBackupsUnavailableException(message: message)
        case "GlobalTableAlreadyExistsException":
            self = .globalTableAlreadyExistsException(message: message)
        case "GlobalTableNotFoundException":
            self = .globalTableNotFoundException(message: message)
        case "IdempotentParameterMismatchException":
            self = .idempotentParameterMismatchException(message: message)
        case "IndexNotFoundException":
            self = .indexNotFoundException(message: message)
        case "InternalServerError":
            self = .internalServerError(message: message)
        case "InvalidRestoreTimeException":
            self = .invalidRestoreTimeException(message: message)
        case "ItemCollectionSizeLimitExceededException":
            self = .itemCollectionSizeLimitExceededException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "PointInTimeRecoveryUnavailableException":
            self = .pointInTimeRecoveryUnavailableException(message: message)
        case "ProvisionedThroughputExceededException":
            self = .provisionedThroughputExceededException(message: message)
        case "ReplicaAlreadyExistsException":
            self = .replicaAlreadyExistsException(message: message)
        case "ReplicaNotFoundException":
            self = .replicaNotFoundException(message: message)
        case "RequestLimitExceeded":
            self = .requestLimitExceeded(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "TableAlreadyExistsException":
            self = .tableAlreadyExistsException(message: message)
        case "TableInUseException":
            self = .tableInUseException(message: message)
        case "TableNotFoundException":
            self = .tableNotFoundException(message: message)
        case "TransactionCanceledException":
            self = .transactionCanceledException(message: message)
        case "TransactionConflictException":
            self = .transactionConflictException(message: message)
        case "TransactionInProgressException":
            self = .transactionInProgressException(message: message)
        default:
            return nil
        }
    }
}

extension DynamoDBErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .backupInUseException(let message):
            return "BackupInUseException: \(message ?? "")"
        case .backupNotFoundException(let message):
            return "BackupNotFoundException: \(message ?? "")"
        case .conditionalCheckFailedException(let message):
            return "ConditionalCheckFailedException: \(message ?? "")"
        case .continuousBackupsUnavailableException(let message):
            return "ContinuousBackupsUnavailableException: \(message ?? "")"
        case .globalTableAlreadyExistsException(let message):
            return "GlobalTableAlreadyExistsException: \(message ?? "")"
        case .globalTableNotFoundException(let message):
            return "GlobalTableNotFoundException: \(message ?? "")"
        case .idempotentParameterMismatchException(let message):
            return "IdempotentParameterMismatchException: \(message ?? "")"
        case .indexNotFoundException(let message):
            return "IndexNotFoundException: \(message ?? "")"
        case .internalServerError(let message):
            return "InternalServerError: \(message ?? "")"
        case .invalidRestoreTimeException(let message):
            return "InvalidRestoreTimeException: \(message ?? "")"
        case .itemCollectionSizeLimitExceededException(let message):
            return "ItemCollectionSizeLimitExceededException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .pointInTimeRecoveryUnavailableException(let message):
            return "PointInTimeRecoveryUnavailableException: \(message ?? "")"
        case .provisionedThroughputExceededException(let message):
            return "ProvisionedThroughputExceededException: \(message ?? "")"
        case .replicaAlreadyExistsException(let message):
            return "ReplicaAlreadyExistsException: \(message ?? "")"
        case .replicaNotFoundException(let message):
            return "ReplicaNotFoundException: \(message ?? "")"
        case .requestLimitExceeded(let message):
            return "RequestLimitExceeded: \(message ?? "")"
        case .resourceInUseException(let message):
            return "ResourceInUseException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .tableAlreadyExistsException(let message):
            return "TableAlreadyExistsException: \(message ?? "")"
        case .tableInUseException(let message):
            return "TableInUseException: \(message ?? "")"
        case .tableNotFoundException(let message):
            return "TableNotFoundException: \(message ?? "")"
        case .transactionCanceledException(let message):
            return "TransactionCanceledException: \(message ?? "")"
        case .transactionConflictException(let message):
            return "TransactionConflictException: \(message ?? "")"
        case .transactionInProgressException(let message):
            return "TransactionInProgressException: \(message ?? "")"
        }
    }
}
