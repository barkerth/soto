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

@_exported import AWSSDKSwiftCore

/*
Client object for interacting with AWS WorkLink service.

Amazon WorkLink is a cloud-based service that provides secure access to internal websites and web apps from iOS and Android phones. In a single step, your users, such as employees, can access internal websites as efficiently as they access any other public website. They enter a URL in their web browser, or choose a link to an internal website in an email. Amazon WorkLink authenticates the user's access and securely renders authorized internal web content in a secure rendering service in the AWS cloud. Amazon WorkLink doesn't download or store any internal web content on mobile devices.
*/
public struct WorkLink: AWSService {

    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig
    public let context: AWSServiceContext

    // MARK: Initialization

    /// Initialize the WorkLink client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "worklink",
            serviceProtocol: .restjson,
            apiVersion: "2018-09-25",
            endpoint: endpoint,
            possibleErrorTypes: [WorkLinkErrorType.self]        )
        self.context = .init(timeout: timeout ?? .seconds(20))
    }

    /// create copy of service with new context
    public func withNewContext(_ process: (AWSServiceContext) -> AWSServiceContext) -> Self {
        return Self(client: self.client, config: self.config, context: process(self.context))
    }

    // MARK: API Calls

    ///  Specifies a domain to be associated to Amazon WorkLink.
    public func associateDomain(_ input: AssociateDomainRequest) -> EventLoopFuture<AssociateDomainResponse> {
        return client.execute(operation: "AssociateDomain", path: "/associateDomain", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Associates a website authorization provider with a specified fleet. This is used to authorize users against associated websites in the company network.
    public func associateWebsiteAuthorizationProvider(_ input: AssociateWebsiteAuthorizationProviderRequest) -> EventLoopFuture<AssociateWebsiteAuthorizationProviderResponse> {
        return client.execute(operation: "AssociateWebsiteAuthorizationProvider", path: "/associateWebsiteAuthorizationProvider", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Imports the root certificate of a certificate authority (CA) used to obtain TLS certificates used by associated websites within the company network.
    public func associateWebsiteCertificateAuthority(_ input: AssociateWebsiteCertificateAuthorityRequest) -> EventLoopFuture<AssociateWebsiteCertificateAuthorityResponse> {
        return client.execute(operation: "AssociateWebsiteCertificateAuthority", path: "/associateWebsiteCertificateAuthority", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Creates a fleet. A fleet consists of resources and the configuration that delivers associated websites to authorized users who download and set up the Amazon WorkLink app.
    public func createFleet(_ input: CreateFleetRequest) -> EventLoopFuture<CreateFleetResponse> {
        return client.execute(operation: "CreateFleet", path: "/createFleet", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deletes a fleet. Prevents users from accessing previously associated websites. 
    public func deleteFleet(_ input: DeleteFleetRequest) -> EventLoopFuture<DeleteFleetResponse> {
        return client.execute(operation: "DeleteFleet", path: "/deleteFleet", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Describes the configuration for delivering audit streams to the customer account.
    public func describeAuditStreamConfiguration(_ input: DescribeAuditStreamConfigurationRequest) -> EventLoopFuture<DescribeAuditStreamConfigurationResponse> {
        return client.execute(operation: "DescribeAuditStreamConfiguration", path: "/describeAuditStreamConfiguration", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Describes the networking configuration to access the internal websites associated with the specified fleet.
    public func describeCompanyNetworkConfiguration(_ input: DescribeCompanyNetworkConfigurationRequest) -> EventLoopFuture<DescribeCompanyNetworkConfigurationResponse> {
        return client.execute(operation: "DescribeCompanyNetworkConfiguration", path: "/describeCompanyNetworkConfiguration", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Provides information about a user's device.
    public func describeDevice(_ input: DescribeDeviceRequest) -> EventLoopFuture<DescribeDeviceResponse> {
        return client.execute(operation: "DescribeDevice", path: "/describeDevice", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Describes the device policy configuration for the specified fleet.
    public func describeDevicePolicyConfiguration(_ input: DescribeDevicePolicyConfigurationRequest) -> EventLoopFuture<DescribeDevicePolicyConfigurationResponse> {
        return client.execute(operation: "DescribeDevicePolicyConfiguration", path: "/describeDevicePolicyConfiguration", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Provides information about the domain.
    public func describeDomain(_ input: DescribeDomainRequest) -> EventLoopFuture<DescribeDomainResponse> {
        return client.execute(operation: "DescribeDomain", path: "/describeDomain", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Provides basic information for the specified fleet, excluding identity provider, networking, and device configuration details.
    public func describeFleetMetadata(_ input: DescribeFleetMetadataRequest) -> EventLoopFuture<DescribeFleetMetadataResponse> {
        return client.execute(operation: "DescribeFleetMetadata", path: "/describeFleetMetadata", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Describes the identity provider configuration of the specified fleet.
    public func describeIdentityProviderConfiguration(_ input: DescribeIdentityProviderConfigurationRequest) -> EventLoopFuture<DescribeIdentityProviderConfigurationResponse> {
        return client.execute(operation: "DescribeIdentityProviderConfiguration", path: "/describeIdentityProviderConfiguration", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Provides information about the certificate authority.
    public func describeWebsiteCertificateAuthority(_ input: DescribeWebsiteCertificateAuthorityRequest) -> EventLoopFuture<DescribeWebsiteCertificateAuthorityResponse> {
        return client.execute(operation: "DescribeWebsiteCertificateAuthority", path: "/describeWebsiteCertificateAuthority", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Disassociates a domain from Amazon WorkLink. End users lose the ability to access the domain with Amazon WorkLink. 
    public func disassociateDomain(_ input: DisassociateDomainRequest) -> EventLoopFuture<DisassociateDomainResponse> {
        return client.execute(operation: "DisassociateDomain", path: "/disassociateDomain", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Disassociates a website authorization provider from a specified fleet. After the disassociation, users can't load any associated websites that require this authorization provider.
    public func disassociateWebsiteAuthorizationProvider(_ input: DisassociateWebsiteAuthorizationProviderRequest) -> EventLoopFuture<DisassociateWebsiteAuthorizationProviderResponse> {
        return client.execute(operation: "DisassociateWebsiteAuthorizationProvider", path: "/disassociateWebsiteAuthorizationProvider", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Removes a certificate authority (CA).
    public func disassociateWebsiteCertificateAuthority(_ input: DisassociateWebsiteCertificateAuthorityRequest) -> EventLoopFuture<DisassociateWebsiteCertificateAuthorityResponse> {
        return client.execute(operation: "DisassociateWebsiteCertificateAuthority", path: "/disassociateWebsiteCertificateAuthority", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves a list of devices registered with the specified fleet.
    public func listDevices(_ input: ListDevicesRequest) -> EventLoopFuture<ListDevicesResponse> {
        return client.execute(operation: "ListDevices", path: "/listDevices", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves a list of domains associated to a specified fleet.
    public func listDomains(_ input: ListDomainsRequest) -> EventLoopFuture<ListDomainsResponse> {
        return client.execute(operation: "ListDomains", path: "/listDomains", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves a list of fleets for the current account and Region.
    public func listFleets(_ input: ListFleetsRequest) -> EventLoopFuture<ListFleetsResponse> {
        return client.execute(operation: "ListFleets", path: "/listFleets", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves a list of tags for the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves a list of website authorization providers associated with a specified fleet.
    public func listWebsiteAuthorizationProviders(_ input: ListWebsiteAuthorizationProvidersRequest) -> EventLoopFuture<ListWebsiteAuthorizationProvidersResponse> {
        return client.execute(operation: "ListWebsiteAuthorizationProviders", path: "/listWebsiteAuthorizationProviders", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves a list of certificate authorities added for the current account and Region.
    public func listWebsiteCertificateAuthorities(_ input: ListWebsiteCertificateAuthoritiesRequest) -> EventLoopFuture<ListWebsiteCertificateAuthoritiesResponse> {
        return client.execute(operation: "ListWebsiteCertificateAuthorities", path: "/listWebsiteCertificateAuthorities", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Moves a domain to ACTIVE status if it was in the INACTIVE status.
    public func restoreDomainAccess(_ input: RestoreDomainAccessRequest) -> EventLoopFuture<RestoreDomainAccessResponse> {
        return client.execute(operation: "RestoreDomainAccess", path: "/restoreDomainAccess", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Moves a domain to INACTIVE status if it was in the ACTIVE status.
    public func revokeDomainAccess(_ input: RevokeDomainAccessRequest) -> EventLoopFuture<RevokeDomainAccessResponse> {
        return client.execute(operation: "RevokeDomainAccess", path: "/revokeDomainAccess", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Signs the user out from all of their devices. The user can sign in again if they have valid credentials.
    public func signOutUser(_ input: SignOutUserRequest) -> EventLoopFuture<SignOutUserResponse> {
        return client.execute(operation: "SignOutUser", path: "/signOutUser", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Adds or overwrites one or more tags for the specified resource, such as a fleet. Each tag consists of a key and an optional value. If a resource already has a tag with the same key, this operation updates its value.
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Removes one or more tags from the specified resource.
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Updates the audit stream configuration for the fleet.
    public func updateAuditStreamConfiguration(_ input: UpdateAuditStreamConfigurationRequest) -> EventLoopFuture<UpdateAuditStreamConfigurationResponse> {
        return client.execute(operation: "UpdateAuditStreamConfiguration", path: "/updateAuditStreamConfiguration", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Updates the company network configuration for the fleet.
    public func updateCompanyNetworkConfiguration(_ input: UpdateCompanyNetworkConfigurationRequest) -> EventLoopFuture<UpdateCompanyNetworkConfigurationResponse> {
        return client.execute(operation: "UpdateCompanyNetworkConfiguration", path: "/updateCompanyNetworkConfiguration", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Updates the device policy configuration for the fleet.
    public func updateDevicePolicyConfiguration(_ input: UpdateDevicePolicyConfigurationRequest) -> EventLoopFuture<UpdateDevicePolicyConfigurationResponse> {
        return client.execute(operation: "UpdateDevicePolicyConfiguration", path: "/updateDevicePolicyConfiguration", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Updates domain metadata, such as DisplayName.
    public func updateDomainMetadata(_ input: UpdateDomainMetadataRequest) -> EventLoopFuture<UpdateDomainMetadataResponse> {
        return client.execute(operation: "UpdateDomainMetadata", path: "/updateDomainMetadata", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Updates fleet metadata, such as DisplayName.
    public func updateFleetMetadata(_ input: UpdateFleetMetadataRequest) -> EventLoopFuture<UpdateFleetMetadataResponse> {
        return client.execute(operation: "UpdateFleetMetadata", path: "/UpdateFleetMetadata", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Updates the identity provider configuration for the fleet.
    public func updateIdentityProviderConfiguration(_ input: UpdateIdentityProviderConfigurationRequest) -> EventLoopFuture<UpdateIdentityProviderConfigurationResponse> {
        return client.execute(operation: "UpdateIdentityProviderConfiguration", path: "/updateIdentityProviderConfiguration", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }
}

extension WorkLink {
    /// internal initialiser used by `withNewContext`
    init(client: AWSClient, config: AWSServiceConfig, context: AWSServiceContext) {
        self.client = client
        self.config = config
        self.context = context
    }
}
