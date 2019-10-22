// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for DocDB
public enum DocDBErrorType: AWSErrorType {
    case authorizationNotFoundFault(message: String?)
    case certificateNotFoundFault(message: String?)
    case dBClusterAlreadyExistsFault(message: String?)
    case dBClusterNotFoundFault(message: String?)
    case dBClusterParameterGroupNotFoundFault(message: String?)
    case dBClusterQuotaExceededFault(message: String?)
    case dBClusterSnapshotAlreadyExistsFault(message: String?)
    case dBClusterSnapshotNotFoundFault(message: String?)
    case dBInstanceAlreadyExistsFault(message: String?)
    case dBInstanceNotFoundFault(message: String?)
    case dBParameterGroupAlreadyExistsFault(message: String?)
    case dBParameterGroupNotFoundFault(message: String?)
    case dBParameterGroupQuotaExceededFault(message: String?)
    case dBSecurityGroupNotFoundFault(message: String?)
    case dBSnapshotAlreadyExistsFault(message: String?)
    case dBSnapshotNotFoundFault(message: String?)
    case dBSubnetGroupAlreadyExistsFault(message: String?)
    case dBSubnetGroupDoesNotCoverEnoughAZs(message: String?)
    case dBSubnetGroupNotFoundFault(message: String?)
    case dBSubnetGroupQuotaExceededFault(message: String?)
    case dBSubnetQuotaExceededFault(message: String?)
    case dBUpgradeDependencyFailureFault(message: String?)
    case instanceQuotaExceededFault(message: String?)
    case insufficientDBClusterCapacityFault(message: String?)
    case insufficientDBInstanceCapacityFault(message: String?)
    case insufficientStorageClusterCapacityFault(message: String?)
    case invalidDBClusterSnapshotStateFault(message: String?)
    case invalidDBClusterStateFault(message: String?)
    case invalidDBInstanceStateFault(message: String?)
    case invalidDBParameterGroupStateFault(message: String?)
    case invalidDBSecurityGroupStateFault(message: String?)
    case invalidDBSnapshotStateFault(message: String?)
    case invalidDBSubnetGroupStateFault(message: String?)
    case invalidDBSubnetStateFault(message: String?)
    case invalidRestoreFault(message: String?)
    case invalidSubnet(message: String?)
    case invalidVPCNetworkStateFault(message: String?)
    case kMSKeyNotAccessibleFault(message: String?)
    case resourceNotFoundFault(message: String?)
    case sharedSnapshotQuotaExceededFault(message: String?)
    case snapshotQuotaExceededFault(message: String?)
    case storageQuotaExceededFault(message: String?)
    case storageTypeNotSupportedFault(message: String?)
    case subnetAlreadyInUse(message: String?)
}

extension DocDBErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AuthorizationNotFound":
            self = .authorizationNotFoundFault(message: message)
        case "CertificateNotFound":
            self = .certificateNotFoundFault(message: message)
        case "DBClusterAlreadyExistsFault":
            self = .dBClusterAlreadyExistsFault(message: message)
        case "DBClusterNotFoundFault":
            self = .dBClusterNotFoundFault(message: message)
        case "DBClusterParameterGroupNotFound":
            self = .dBClusterParameterGroupNotFoundFault(message: message)
        case "DBClusterQuotaExceededFault":
            self = .dBClusterQuotaExceededFault(message: message)
        case "DBClusterSnapshotAlreadyExistsFault":
            self = .dBClusterSnapshotAlreadyExistsFault(message: message)
        case "DBClusterSnapshotNotFoundFault":
            self = .dBClusterSnapshotNotFoundFault(message: message)
        case "DBInstanceAlreadyExists":
            self = .dBInstanceAlreadyExistsFault(message: message)
        case "DBInstanceNotFound":
            self = .dBInstanceNotFoundFault(message: message)
        case "DBParameterGroupAlreadyExists":
            self = .dBParameterGroupAlreadyExistsFault(message: message)
        case "DBParameterGroupNotFound":
            self = .dBParameterGroupNotFoundFault(message: message)
        case "DBParameterGroupQuotaExceeded":
            self = .dBParameterGroupQuotaExceededFault(message: message)
        case "DBSecurityGroupNotFound":
            self = .dBSecurityGroupNotFoundFault(message: message)
        case "DBSnapshotAlreadyExists":
            self = .dBSnapshotAlreadyExistsFault(message: message)
        case "DBSnapshotNotFound":
            self = .dBSnapshotNotFoundFault(message: message)
        case "DBSubnetGroupAlreadyExists":
            self = .dBSubnetGroupAlreadyExistsFault(message: message)
        case "DBSubnetGroupDoesNotCoverEnoughAZs":
            self = .dBSubnetGroupDoesNotCoverEnoughAZs(message: message)
        case "DBSubnetGroupNotFoundFault":
            self = .dBSubnetGroupNotFoundFault(message: message)
        case "DBSubnetGroupQuotaExceeded":
            self = .dBSubnetGroupQuotaExceededFault(message: message)
        case "DBSubnetQuotaExceededFault":
            self = .dBSubnetQuotaExceededFault(message: message)
        case "DBUpgradeDependencyFailure":
            self = .dBUpgradeDependencyFailureFault(message: message)
        case "InstanceQuotaExceeded":
            self = .instanceQuotaExceededFault(message: message)
        case "InsufficientDBClusterCapacityFault":
            self = .insufficientDBClusterCapacityFault(message: message)
        case "InsufficientDBInstanceCapacity":
            self = .insufficientDBInstanceCapacityFault(message: message)
        case "InsufficientStorageClusterCapacity":
            self = .insufficientStorageClusterCapacityFault(message: message)
        case "InvalidDBClusterSnapshotStateFault":
            self = .invalidDBClusterSnapshotStateFault(message: message)
        case "InvalidDBClusterStateFault":
            self = .invalidDBClusterStateFault(message: message)
        case "InvalidDBInstanceState":
            self = .invalidDBInstanceStateFault(message: message)
        case "InvalidDBParameterGroupState":
            self = .invalidDBParameterGroupStateFault(message: message)
        case "InvalidDBSecurityGroupState":
            self = .invalidDBSecurityGroupStateFault(message: message)
        case "InvalidDBSnapshotState":
            self = .invalidDBSnapshotStateFault(message: message)
        case "InvalidDBSubnetGroupStateFault":
            self = .invalidDBSubnetGroupStateFault(message: message)
        case "InvalidDBSubnetStateFault":
            self = .invalidDBSubnetStateFault(message: message)
        case "InvalidRestoreFault":
            self = .invalidRestoreFault(message: message)
        case "InvalidSubnet":
            self = .invalidSubnet(message: message)
        case "InvalidVPCNetworkStateFault":
            self = .invalidVPCNetworkStateFault(message: message)
        case "KMSKeyNotAccessibleFault":
            self = .kMSKeyNotAccessibleFault(message: message)
        case "ResourceNotFoundFault":
            self = .resourceNotFoundFault(message: message)
        case "SharedSnapshotQuotaExceeded":
            self = .sharedSnapshotQuotaExceededFault(message: message)
        case "SnapshotQuotaExceeded":
            self = .snapshotQuotaExceededFault(message: message)
        case "StorageQuotaExceeded":
            self = .storageQuotaExceededFault(message: message)
        case "StorageTypeNotSupported":
            self = .storageTypeNotSupportedFault(message: message)
        case "SubnetAlreadyInUse":
            self = .subnetAlreadyInUse(message: message)
        default:
            return nil
        }
    }
}

extension DocDBErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .authorizationNotFoundFault(let message):
            return "AuthorizationNotFound: \(message ?? "")"
        case .certificateNotFoundFault(let message):
            return "CertificateNotFound: \(message ?? "")"
        case .dBClusterAlreadyExistsFault(let message):
            return "DBClusterAlreadyExistsFault: \(message ?? "")"
        case .dBClusterNotFoundFault(let message):
            return "DBClusterNotFoundFault: \(message ?? "")"
        case .dBClusterParameterGroupNotFoundFault(let message):
            return "DBClusterParameterGroupNotFound: \(message ?? "")"
        case .dBClusterQuotaExceededFault(let message):
            return "DBClusterQuotaExceededFault: \(message ?? "")"
        case .dBClusterSnapshotAlreadyExistsFault(let message):
            return "DBClusterSnapshotAlreadyExistsFault: \(message ?? "")"
        case .dBClusterSnapshotNotFoundFault(let message):
            return "DBClusterSnapshotNotFoundFault: \(message ?? "")"
        case .dBInstanceAlreadyExistsFault(let message):
            return "DBInstanceAlreadyExists: \(message ?? "")"
        case .dBInstanceNotFoundFault(let message):
            return "DBInstanceNotFound: \(message ?? "")"
        case .dBParameterGroupAlreadyExistsFault(let message):
            return "DBParameterGroupAlreadyExists: \(message ?? "")"
        case .dBParameterGroupNotFoundFault(let message):
            return "DBParameterGroupNotFound: \(message ?? "")"
        case .dBParameterGroupQuotaExceededFault(let message):
            return "DBParameterGroupQuotaExceeded: \(message ?? "")"
        case .dBSecurityGroupNotFoundFault(let message):
            return "DBSecurityGroupNotFound: \(message ?? "")"
        case .dBSnapshotAlreadyExistsFault(let message):
            return "DBSnapshotAlreadyExists: \(message ?? "")"
        case .dBSnapshotNotFoundFault(let message):
            return "DBSnapshotNotFound: \(message ?? "")"
        case .dBSubnetGroupAlreadyExistsFault(let message):
            return "DBSubnetGroupAlreadyExists: \(message ?? "")"
        case .dBSubnetGroupDoesNotCoverEnoughAZs(let message):
            return "DBSubnetGroupDoesNotCoverEnoughAZs: \(message ?? "")"
        case .dBSubnetGroupNotFoundFault(let message):
            return "DBSubnetGroupNotFoundFault: \(message ?? "")"
        case .dBSubnetGroupQuotaExceededFault(let message):
            return "DBSubnetGroupQuotaExceeded: \(message ?? "")"
        case .dBSubnetQuotaExceededFault(let message):
            return "DBSubnetQuotaExceededFault: \(message ?? "")"
        case .dBUpgradeDependencyFailureFault(let message):
            return "DBUpgradeDependencyFailure: \(message ?? "")"
        case .instanceQuotaExceededFault(let message):
            return "InstanceQuotaExceeded: \(message ?? "")"
        case .insufficientDBClusterCapacityFault(let message):
            return "InsufficientDBClusterCapacityFault: \(message ?? "")"
        case .insufficientDBInstanceCapacityFault(let message):
            return "InsufficientDBInstanceCapacity: \(message ?? "")"
        case .insufficientStorageClusterCapacityFault(let message):
            return "InsufficientStorageClusterCapacity: \(message ?? "")"
        case .invalidDBClusterSnapshotStateFault(let message):
            return "InvalidDBClusterSnapshotStateFault: \(message ?? "")"
        case .invalidDBClusterStateFault(let message):
            return "InvalidDBClusterStateFault: \(message ?? "")"
        case .invalidDBInstanceStateFault(let message):
            return "InvalidDBInstanceState: \(message ?? "")"
        case .invalidDBParameterGroupStateFault(let message):
            return "InvalidDBParameterGroupState: \(message ?? "")"
        case .invalidDBSecurityGroupStateFault(let message):
            return "InvalidDBSecurityGroupState: \(message ?? "")"
        case .invalidDBSnapshotStateFault(let message):
            return "InvalidDBSnapshotState: \(message ?? "")"
        case .invalidDBSubnetGroupStateFault(let message):
            return "InvalidDBSubnetGroupStateFault: \(message ?? "")"
        case .invalidDBSubnetStateFault(let message):
            return "InvalidDBSubnetStateFault: \(message ?? "")"
        case .invalidRestoreFault(let message):
            return "InvalidRestoreFault: \(message ?? "")"
        case .invalidSubnet(let message):
            return "InvalidSubnet: \(message ?? "")"
        case .invalidVPCNetworkStateFault(let message):
            return "InvalidVPCNetworkStateFault: \(message ?? "")"
        case .kMSKeyNotAccessibleFault(let message):
            return "KMSKeyNotAccessibleFault: \(message ?? "")"
        case .resourceNotFoundFault(let message):
            return "ResourceNotFoundFault: \(message ?? "")"
        case .sharedSnapshotQuotaExceededFault(let message):
            return "SharedSnapshotQuotaExceeded: \(message ?? "")"
        case .snapshotQuotaExceededFault(let message):
            return "SnapshotQuotaExceeded: \(message ?? "")"
        case .storageQuotaExceededFault(let message):
            return "StorageQuotaExceeded: \(message ?? "")"
        case .storageTypeNotSupportedFault(let message):
            return "StorageTypeNotSupported: \(message ?? "")"
        case .subnetAlreadyInUse(let message):
            return "SubnetAlreadyInUse: \(message ?? "")"
        }
    }
}
