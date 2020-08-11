//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

// MARK: Paginators

extension IAM {

    ///  Retrieves information about all IAM users, groups, roles, and policies in your AWS account, including their relationships to one another. Use this API to obtain a snapshot of the configuration of IAM permissions (users, groups, roles, and policies) in your account.  Policies returned by this API are URL-encoded compliant with RFC 3986. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the decode method of the java.net.URLDecoder utility class in the Java SDK. Other languages and SDKs provide similar functionality.  You can optionally filter the results using the Filter parameter. You can paginate the results using the MaxItems and Marker parameters.
    public func getAccountAuthorizationDetailsPaginator(
        _ input: GetAccountAuthorizationDetailsRequest,
        onPage: @escaping (GetAccountAuthorizationDetailsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getAccountAuthorizationDetails,
            tokenKey: \GetAccountAuthorizationDetailsResponse.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///   Returns a list of IAM users that are in the specified IAM group. You can paginate the results using the MaxItems and Marker parameters.
    public func getGroupPaginator(
        _ input: GetGroupRequest,
        onPage: @escaping (GetGroupResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getGroup,
            tokenKey: \GetGroupResponse.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Returns information about the access key IDs associated with the specified IAM user. If there is none, the operation returns an empty list. Although each user is limited to a small number of keys, you can still paginate the results using the MaxItems and Marker parameters. If the UserName field is not specified, the user name is determined implicitly based on the AWS access key ID used to sign the request. This operation works for access keys under the AWS account. Consequently, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated users.  To ensure the security of your AWS account, the secret access key is accessible only during key and user creation. 
    public func listAccessKeysPaginator(
        _ input: ListAccessKeysRequest,
        onPage: @escaping (ListAccessKeysResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAccessKeys,
            tokenKey: \ListAccessKeysResponse.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists the account alias associated with the AWS account (Note: you can have only one). For information about using an AWS account alias, see Using an Alias for Your AWS Account ID in the IAM User Guide.
    public func listAccountAliasesPaginator(
        _ input: ListAccountAliasesRequest,
        onPage: @escaping (ListAccountAliasesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAccountAliases,
            tokenKey: \ListAccountAliasesResponse.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists all managed policies that are attached to the specified IAM group. An IAM group can also have inline policies embedded with it. To list the inline policies for a group, use the ListGroupPolicies API. For information about policies, see Managed Policies and Inline Policies in the IAM User Guide. You can paginate the results using the MaxItems and Marker parameters. You can use the PathPrefix parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified group (or none that match the specified path prefix), the operation returns an empty list.
    public func listAttachedGroupPoliciesPaginator(
        _ input: ListAttachedGroupPoliciesRequest,
        onPage: @escaping (ListAttachedGroupPoliciesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAttachedGroupPolicies,
            tokenKey: \ListAttachedGroupPoliciesResponse.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists all managed policies that are attached to the specified IAM role. An IAM role can also have inline policies embedded with it. To list the inline policies for a role, use the ListRolePolicies API. For information about policies, see Managed Policies and Inline Policies in the IAM User Guide. You can paginate the results using the MaxItems and Marker parameters. You can use the PathPrefix parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified role (or none that match the specified path prefix), the operation returns an empty list.
    public func listAttachedRolePoliciesPaginator(
        _ input: ListAttachedRolePoliciesRequest,
        onPage: @escaping (ListAttachedRolePoliciesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAttachedRolePolicies,
            tokenKey: \ListAttachedRolePoliciesResponse.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists all managed policies that are attached to the specified IAM user. An IAM user can also have inline policies embedded with it. To list the inline policies for a user, use the ListUserPolicies API. For information about policies, see Managed Policies and Inline Policies in the IAM User Guide. You can paginate the results using the MaxItems and Marker parameters. You can use the PathPrefix parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified group (or none that match the specified path prefix), the operation returns an empty list.
    public func listAttachedUserPoliciesPaginator(
        _ input: ListAttachedUserPoliciesRequest,
        onPage: @escaping (ListAttachedUserPoliciesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAttachedUserPolicies,
            tokenKey: \ListAttachedUserPoliciesResponse.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists all IAM users, groups, and roles that the specified managed policy is attached to. You can use the optional EntityFilter parameter to limit the results to a particular type of entity (users, groups, or roles). For example, to list only the roles that are attached to the specified policy, set EntityFilter to Role. You can paginate the results using the MaxItems and Marker parameters.
    public func listEntitiesForPolicyPaginator(
        _ input: ListEntitiesForPolicyRequest,
        onPage: @escaping (ListEntitiesForPolicyResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listEntitiesForPolicy,
            tokenKey: \ListEntitiesForPolicyResponse.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists the names of the inline policies that are embedded in the specified IAM group. An IAM group can also have managed policies attached to it. To list the managed policies that are attached to a group, use ListAttachedGroupPolicies. For more information about policies, see Managed Policies and Inline Policies in the IAM User Guide. You can paginate the results using the MaxItems and Marker parameters. If there are no inline policies embedded with the specified group, the operation returns an empty list.
    public func listGroupPoliciesPaginator(
        _ input: ListGroupPoliciesRequest,
        onPage: @escaping (ListGroupPoliciesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listGroupPolicies,
            tokenKey: \ListGroupPoliciesResponse.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists the IAM groups that have the specified path prefix.  You can paginate the results using the MaxItems and Marker parameters.
    public func listGroupsPaginator(
        _ input: ListGroupsRequest,
        onPage: @escaping (ListGroupsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listGroups,
            tokenKey: \ListGroupsResponse.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists the IAM groups that the specified IAM user belongs to. You can paginate the results using the MaxItems and Marker parameters.
    public func listGroupsForUserPaginator(
        _ input: ListGroupsForUserRequest,
        onPage: @escaping (ListGroupsForUserResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listGroupsForUser,
            tokenKey: \ListGroupsForUserResponse.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists the instance profiles that have the specified path prefix. If there are none, the operation returns an empty list. For more information about instance profiles, go to About Instance Profiles. You can paginate the results using the MaxItems and Marker parameters.
    public func listInstanceProfilesPaginator(
        _ input: ListInstanceProfilesRequest,
        onPage: @escaping (ListInstanceProfilesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listInstanceProfiles,
            tokenKey: \ListInstanceProfilesResponse.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists the instance profiles that have the specified associated IAM role. If there are none, the operation returns an empty list. For more information about instance profiles, go to About Instance Profiles. You can paginate the results using the MaxItems and Marker parameters.
    public func listInstanceProfilesForRolePaginator(
        _ input: ListInstanceProfilesForRoleRequest,
        onPage: @escaping (ListInstanceProfilesForRoleResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listInstanceProfilesForRole,
            tokenKey: \ListInstanceProfilesForRoleResponse.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists the MFA devices for an IAM user. If the request includes a IAM user name, then this operation lists all the MFA devices associated with the specified user. If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request for this API. You can paginate the results using the MaxItems and Marker parameters.
    public func listMFADevicesPaginator(
        _ input: ListMFADevicesRequest,
        onPage: @escaping (ListMFADevicesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listMFADevices,
            tokenKey: \ListMFADevicesResponse.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists all the managed policies that are available in your AWS account, including your own customer-defined managed policies and all AWS managed policies. You can filter the list of policies that is returned using the optional OnlyAttached, Scope, and PathPrefix parameters. For example, to list only the customer managed policies in your AWS account, set Scope to Local. To list only AWS managed policies, set Scope to AWS. You can paginate the results using the MaxItems and Marker parameters. For more information about managed policies, see Managed Policies and Inline Policies in the IAM User Guide.
    public func listPoliciesPaginator(
        _ input: ListPoliciesRequest,
        onPage: @escaping (ListPoliciesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPolicies,
            tokenKey: \ListPoliciesResponse.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists information about the versions of the specified managed policy, including the version that is currently set as the policy's default version. For more information about managed policies, see Managed Policies and Inline Policies in the IAM User Guide.
    public func listPolicyVersionsPaginator(
        _ input: ListPolicyVersionsRequest,
        onPage: @escaping (ListPolicyVersionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPolicyVersions,
            tokenKey: \ListPolicyVersionsResponse.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists the names of the inline policies that are embedded in the specified IAM role. An IAM role can also have managed policies attached to it. To list the managed policies that are attached to a role, use ListAttachedRolePolicies. For more information about policies, see Managed Policies and Inline Policies in the IAM User Guide. You can paginate the results using the MaxItems and Marker parameters. If there are no inline policies embedded with the specified role, the operation returns an empty list.
    public func listRolePoliciesPaginator(
        _ input: ListRolePoliciesRequest,
        onPage: @escaping (ListRolePoliciesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRolePolicies,
            tokenKey: \ListRolePoliciesResponse.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists the IAM roles that have the specified path prefix. If there are none, the operation returns an empty list. For more information about roles, go to Working with Roles. You can paginate the results using the MaxItems and Marker parameters.
    public func listRolesPaginator(
        _ input: ListRolesRequest,
        onPage: @escaping (ListRolesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRoles,
            tokenKey: \ListRolesResponse.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Returns information about the SSH public keys associated with the specified IAM user. If none exists, the operation returns an empty list. The SSH public keys returned by this operation are used only for authenticating the IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see Set up AWS CodeCommit for SSH Connections in the AWS CodeCommit User Guide. Although each user is limited to a small number of keys, you can still paginate the results using the MaxItems and Marker parameters.
    public func listSSHPublicKeysPaginator(
        _ input: ListSSHPublicKeysRequest,
        onPage: @escaping (ListSSHPublicKeysResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSSHPublicKeys,
            tokenKey: \ListSSHPublicKeysResponse.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists the server certificates stored in IAM that have the specified path prefix. If none exist, the operation returns an empty list.  You can paginate the results using the MaxItems and Marker parameters. For more information about working with server certificates, see Working with Server Certificates in the IAM User Guide. This topic also includes a list of AWS services that can use the server certificates that you manage with IAM.
    public func listServerCertificatesPaginator(
        _ input: ListServerCertificatesRequest,
        onPage: @escaping (ListServerCertificatesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listServerCertificates,
            tokenKey: \ListServerCertificatesResponse.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Returns information about the signing certificates associated with the specified IAM user. If none exists, the operation returns an empty list. Although each user is limited to a small number of signing certificates, you can still paginate the results using the MaxItems and Marker parameters. If the UserName field is not specified, the user name is determined implicitly based on the AWS access key ID used to sign the request for this API. This operation works for access keys under the AWS account. Consequently, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated users.
    public func listSigningCertificatesPaginator(
        _ input: ListSigningCertificatesRequest,
        onPage: @escaping (ListSigningCertificatesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSigningCertificates,
            tokenKey: \ListSigningCertificatesResponse.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists the names of the inline policies embedded in the specified IAM user. An IAM user can also have managed policies attached to it. To list the managed policies that are attached to a user, use ListAttachedUserPolicies. For more information about policies, see Managed Policies and Inline Policies in the IAM User Guide. You can paginate the results using the MaxItems and Marker parameters. If there are no inline policies embedded with the specified user, the operation returns an empty list.
    public func listUserPoliciesPaginator(
        _ input: ListUserPoliciesRequest,
        onPage: @escaping (ListUserPoliciesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listUserPolicies,
            tokenKey: \ListUserPoliciesResponse.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists the IAM users that have the specified path prefix. If no path prefix is specified, the operation returns all users in the AWS account. If there are none, the operation returns an empty list. You can paginate the results using the MaxItems and Marker parameters.
    public func listUsersPaginator(
        _ input: ListUsersRequest,
        onPage: @escaping (ListUsersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listUsers,
            tokenKey: \ListUsersResponse.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists the virtual MFA devices defined in the AWS account by assignment status. If you do not specify an assignment status, the operation returns a list of all virtual MFA devices. Assignment status can be Assigned, Unassigned, or Any. You can paginate the results using the MaxItems and Marker parameters.
    public func listVirtualMFADevicesPaginator(
        _ input: ListVirtualMFADevicesRequest,
        onPage: @escaping (ListVirtualMFADevicesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listVirtualMFADevices,
            tokenKey: \ListVirtualMFADevicesResponse.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Simulate how a set of IAM policies and optionally a resource-based policy works with a list of API operations and AWS resources to determine the policies' effective permissions. The policies are provided as strings. The simulation does not perform the API operations; it only checks the authorization to determine if the simulated policies allow or deny the operations. If you want to simulate existing policies that are attached to an IAM user, group, or role, use SimulatePrincipalPolicy instead. Context keys are variables that are maintained by AWS and its services and which provide details about the context of an API query request. You can use the Condition element of an IAM policy to evaluate context keys. To get the list of context keys that the policies require for correct simulation, use GetContextKeysForCustomPolicy. If the output is long, you can use MaxItems and Marker parameters to paginate the results.
    public func simulateCustomPolicyPaginator(
        _ input: SimulateCustomPolicyRequest,
        onPage: @escaping (SimulatePolicyResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: simulateCustomPolicy,
            tokenKey: \SimulatePolicyResponse.marker,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Simulate how a set of IAM policies attached to an IAM entity works with a list of API operations and AWS resources to determine the policies' effective permissions. The entity can be an IAM user, group, or role. If you specify a user, then the simulation also includes all of the policies that are attached to groups that the user belongs to. You can optionally include a list of one or more additional policies specified as strings to include in the simulation. If you want to simulate only policies specified as strings, use SimulateCustomPolicy instead. You can also optionally include one resource-based policy to be evaluated with each of the resources included in the simulation. The simulation does not perform the API operations; it only checks the authorization to determine if the simulated policies allow or deny the operations.  Note: This API discloses information about the permissions granted to other users. If you do not want users to see other user's permissions, then consider allowing them to use SimulateCustomPolicy instead. Context keys are variables maintained by AWS and its services that provide details about the context of an API query request. You can use the Condition element of an IAM policy to evaluate context keys. To get the list of context keys that the policies require for correct simulation, use GetContextKeysForPrincipalPolicy. If the output is long, you can use the MaxItems and Marker parameters to paginate the results.
    public func simulatePrincipalPolicyPaginator(
        _ input: SimulatePrincipalPolicyRequest,
        onPage: @escaping (SimulatePolicyResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: simulatePrincipalPolicy,
            tokenKey: \SimulatePolicyResponse.marker,
            context: self.context,
            onPage: onPage
        )
    }

}

extension IAM.GetAccountAuthorizationDetailsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IAM.GetAccountAuthorizationDetailsRequest {
        return .init(
            filter: self.filter,
            marker: token,
            maxItems: self.maxItems
        )

    }
}

extension IAM.GetGroupRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IAM.GetGroupRequest {
        return .init(
            groupName: self.groupName,
            marker: token,
            maxItems: self.maxItems
        )

    }
}

extension IAM.ListAccessKeysRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IAM.ListAccessKeysRequest {
        return .init(
            marker: token,
            maxItems: self.maxItems,
            userName: self.userName
        )

    }
}

extension IAM.ListAccountAliasesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IAM.ListAccountAliasesRequest {
        return .init(
            marker: token,
            maxItems: self.maxItems
        )

    }
}

extension IAM.ListAttachedGroupPoliciesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IAM.ListAttachedGroupPoliciesRequest {
        return .init(
            groupName: self.groupName,
            marker: token,
            maxItems: self.maxItems,
            pathPrefix: self.pathPrefix
        )

    }
}

extension IAM.ListAttachedRolePoliciesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IAM.ListAttachedRolePoliciesRequest {
        return .init(
            marker: token,
            maxItems: self.maxItems,
            pathPrefix: self.pathPrefix,
            roleName: self.roleName
        )

    }
}

extension IAM.ListAttachedUserPoliciesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IAM.ListAttachedUserPoliciesRequest {
        return .init(
            marker: token,
            maxItems: self.maxItems,
            pathPrefix: self.pathPrefix,
            userName: self.userName
        )

    }
}

extension IAM.ListEntitiesForPolicyRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IAM.ListEntitiesForPolicyRequest {
        return .init(
            entityFilter: self.entityFilter,
            marker: token,
            maxItems: self.maxItems,
            pathPrefix: self.pathPrefix,
            policyArn: self.policyArn,
            policyUsageFilter: self.policyUsageFilter
        )

    }
}

extension IAM.ListGroupPoliciesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IAM.ListGroupPoliciesRequest {
        return .init(
            groupName: self.groupName,
            marker: token,
            maxItems: self.maxItems
        )

    }
}

extension IAM.ListGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IAM.ListGroupsRequest {
        return .init(
            marker: token,
            maxItems: self.maxItems,
            pathPrefix: self.pathPrefix
        )

    }
}

extension IAM.ListGroupsForUserRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IAM.ListGroupsForUserRequest {
        return .init(
            marker: token,
            maxItems: self.maxItems,
            userName: self.userName
        )

    }
}

extension IAM.ListInstanceProfilesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IAM.ListInstanceProfilesRequest {
        return .init(
            marker: token,
            maxItems: self.maxItems,
            pathPrefix: self.pathPrefix
        )

    }
}

extension IAM.ListInstanceProfilesForRoleRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IAM.ListInstanceProfilesForRoleRequest {
        return .init(
            marker: token,
            maxItems: self.maxItems,
            roleName: self.roleName
        )

    }
}

extension IAM.ListMFADevicesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IAM.ListMFADevicesRequest {
        return .init(
            marker: token,
            maxItems: self.maxItems,
            userName: self.userName
        )

    }
}

extension IAM.ListPoliciesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IAM.ListPoliciesRequest {
        return .init(
            marker: token,
            maxItems: self.maxItems,
            onlyAttached: self.onlyAttached,
            pathPrefix: self.pathPrefix,
            policyUsageFilter: self.policyUsageFilter,
            scope: self.scope
        )

    }
}

extension IAM.ListPolicyVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IAM.ListPolicyVersionsRequest {
        return .init(
            marker: token,
            maxItems: self.maxItems,
            policyArn: self.policyArn
        )

    }
}

extension IAM.ListRolePoliciesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IAM.ListRolePoliciesRequest {
        return .init(
            marker: token,
            maxItems: self.maxItems,
            roleName: self.roleName
        )

    }
}

extension IAM.ListRolesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IAM.ListRolesRequest {
        return .init(
            marker: token,
            maxItems: self.maxItems,
            pathPrefix: self.pathPrefix
        )

    }
}

extension IAM.ListSSHPublicKeysRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IAM.ListSSHPublicKeysRequest {
        return .init(
            marker: token,
            maxItems: self.maxItems,
            userName: self.userName
        )

    }
}

extension IAM.ListServerCertificatesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IAM.ListServerCertificatesRequest {
        return .init(
            marker: token,
            maxItems: self.maxItems,
            pathPrefix: self.pathPrefix
        )

    }
}

extension IAM.ListSigningCertificatesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IAM.ListSigningCertificatesRequest {
        return .init(
            marker: token,
            maxItems: self.maxItems,
            userName: self.userName
        )

    }
}

extension IAM.ListUserPoliciesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IAM.ListUserPoliciesRequest {
        return .init(
            marker: token,
            maxItems: self.maxItems,
            userName: self.userName
        )

    }
}

extension IAM.ListUsersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IAM.ListUsersRequest {
        return .init(
            marker: token,
            maxItems: self.maxItems,
            pathPrefix: self.pathPrefix
        )

    }
}

extension IAM.ListVirtualMFADevicesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IAM.ListVirtualMFADevicesRequest {
        return .init(
            assignmentStatus: self.assignmentStatus,
            marker: token,
            maxItems: self.maxItems
        )

    }
}

extension IAM.SimulateCustomPolicyRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IAM.SimulateCustomPolicyRequest {
        return .init(
            actionNames: self.actionNames,
            callerArn: self.callerArn,
            contextEntries: self.contextEntries,
            marker: token,
            maxItems: self.maxItems,
            permissionsBoundaryPolicyInputList: self.permissionsBoundaryPolicyInputList,
            policyInputList: self.policyInputList,
            resourceArns: self.resourceArns,
            resourceHandlingOption: self.resourceHandlingOption,
            resourceOwner: self.resourceOwner,
            resourcePolicy: self.resourcePolicy
        )

    }
}

extension IAM.SimulatePrincipalPolicyRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IAM.SimulatePrincipalPolicyRequest {
        return .init(
            actionNames: self.actionNames,
            callerArn: self.callerArn,
            contextEntries: self.contextEntries,
            marker: token,
            maxItems: self.maxItems,
            permissionsBoundaryPolicyInputList: self.permissionsBoundaryPolicyInputList,
            policyInputList: self.policyInputList,
            policySourceArn: self.policySourceArn,
            resourceArns: self.resourceArns,
            resourceHandlingOption: self.resourceHandlingOption,
            resourceOwner: self.resourceOwner,
            resourcePolicy: self.resourcePolicy
        )

    }
}

