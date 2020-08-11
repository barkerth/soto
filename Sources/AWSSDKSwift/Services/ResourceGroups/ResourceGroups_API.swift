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
Client object for interacting with AWS ResourceGroups service.

AWS Resource Groups AWS Resource Groups lets you organize AWS resources such as Amazon EC2 instances, Amazon Relational Database Service databases, and Amazon S3 buckets into groups using criteria that you define as tags. A resource group is a collection of resources that match the resource types specified in a query, and share one or more tags or portions of tags. You can create a group of resources based on their roles in your cloud infrastructure, lifecycle stages, regions, application layers, or virtually any criteria. Resource groups enable you to automate management tasks, such as those in AWS Systems Manager Automation documents, on tag-related resources in AWS Systems Manager. Groups of tagged resources also let you quickly view a custom console in AWS Systems Manager that shows AWS Config compliance and other monitoring data about member resources. To create a resource group, build a resource query, and specify tags that identify the criteria that members of the group have in common. Tags are key-value pairs. For more information about Resource Groups, see the AWS Resource Groups User Guide. AWS Resource Groups uses a REST-compliant API that you can use to perform the following types of operations.   Create, Read, Update, and Delete (CRUD) operations on resource groups and resource query entities   Applying, editing, and removing tags from resource groups   Resolving resource group member ARNs so they can be returned as search results   Getting data about resources that are members of a group   Searching AWS resources based on a resource query  
*/
public struct ResourceGroups: AWSService {

    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig
    public let context: AWSServiceContext

    // MARK: Initialization

    /// Initialize the ResourceGroups client
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
            service: "resource-groups",
            serviceProtocol: .restjson,
            apiVersion: "2017-11-27",
            endpoint: endpoint,
            possibleErrorTypes: [ResourceGroupsErrorType.self]        )
        self.context = .init(timeout: timeout ?? .seconds(20))
    }

    /// create copy of service with new context
    public func withNewContext(_ process: (AWSServiceContext) -> AWSServiceContext) -> Self {
        return Self(client: self.client, config: self.config, context: process(self.context))
    }

    // MARK: API Calls

    ///  Creates a resource group with the specified name and description. You can optionally include a resource query, or a service configuration.
    public func createGroup(_ input: CreateGroupInput) -> EventLoopFuture<CreateGroupOutput> {
        return client.execute(operation: "CreateGroup", path: "/groups", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deletes the specified resource group. Deleting a resource group does not delete any resources that are members of the group; it only deletes the group structure.
    public func deleteGroup(_ input: DeleteGroupInput) -> EventLoopFuture<DeleteGroupOutput> {
        return client.execute(operation: "DeleteGroup", path: "/delete-group", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Returns information about a specified resource group.
    public func getGroup(_ input: GetGroupInput) -> EventLoopFuture<GetGroupOutput> {
        return client.execute(operation: "GetGroup", path: "/get-group", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Returns the service configuration associated with the specified resource group. AWS Resource Groups supports configurations for the following resource group types:    AWS::EC2::CapacityReservationPool - Amazon EC2 capacity reservation pools. For more information, see Working with capacity reservation groups in the EC2 Users Guide.  
    public func getGroupConfiguration(_ input: GetGroupConfigurationInput) -> EventLoopFuture<GetGroupConfigurationOutput> {
        return client.execute(operation: "GetGroupConfiguration", path: "/get-group-configuration", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves the resource query associated with the specified resource group.
    public func getGroupQuery(_ input: GetGroupQueryInput) -> EventLoopFuture<GetGroupQueryOutput> {
        return client.execute(operation: "GetGroupQuery", path: "/get-group-query", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Returns a list of tags that are associated with a resource group, specified by an ARN.
    public func getTags(_ input: GetTagsInput) -> EventLoopFuture<GetTagsOutput> {
        return client.execute(operation: "GetTags", path: "/resources/{Arn}/tags", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Adds the specified resources to the specified group.
    public func groupResources(_ input: GroupResourcesInput) -> EventLoopFuture<GroupResourcesOutput> {
        return client.execute(operation: "GroupResources", path: "/group-resources", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Returns a list of ARNs of the resources that are members of a specified resource group.
    public func listGroupResources(_ input: ListGroupResourcesInput) -> EventLoopFuture<ListGroupResourcesOutput> {
        return client.execute(operation: "ListGroupResources", path: "/list-group-resources", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Returns a list of existing resource groups in your account.
    public func listGroups(_ input: ListGroupsInput) -> EventLoopFuture<ListGroupsOutput> {
        return client.execute(operation: "ListGroups", path: "/groups-list", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Returns a list of AWS resource identifiers that matches tne specified query. The query uses the same format as a resource query in a CreateGroup or UpdateGroupQuery operation.
    public func searchResources(_ input: SearchResourcesInput) -> EventLoopFuture<SearchResourcesOutput> {
        return client.execute(operation: "SearchResources", path: "/resources/search", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Adds tags to a resource group with the specified ARN. Existing tags on a resource group are not changed if they are not specified in the request parameters.  Do not store personally identifiable information (PII) or other confidential or sensitive information in tags. We use tags to provide you with billing and administration services. Tags are not intended to be used for private or sensitive data. 
    public func tag(_ input: TagInput) -> EventLoopFuture<TagOutput> {
        return client.execute(operation: "Tag", path: "/resources/{Arn}/tags", httpMethod: .PUT, input: input, config: self.config, context: self.context)
    }

    ///  Removes the specified resources from the specified group.
    public func ungroupResources(_ input: UngroupResourcesInput) -> EventLoopFuture<UngroupResourcesOutput> {
        return client.execute(operation: "UngroupResources", path: "/ungroup-resources", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deletes tags from a specified resource group.
    public func untag(_ input: UntagInput) -> EventLoopFuture<UntagOutput> {
        return client.execute(operation: "Untag", path: "/resources/{Arn}/tags", httpMethod: .PATCH, input: input, config: self.config, context: self.context)
    }

    ///  Updates the description for an existing group. You cannot update the name of a resource group.
    public func updateGroup(_ input: UpdateGroupInput) -> EventLoopFuture<UpdateGroupOutput> {
        return client.execute(operation: "UpdateGroup", path: "/update-group", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Updates the resource query of a group.
    public func updateGroupQuery(_ input: UpdateGroupQueryInput) -> EventLoopFuture<UpdateGroupQueryOutput> {
        return client.execute(operation: "UpdateGroupQuery", path: "/update-group-query", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }
}

extension ResourceGroups {
    /// internal initialiser used by `withNewContext`
    init(client: AWSClient, config: AWSServiceConfig, context: AWSServiceContext) {
        self.client = client
        self.config = config
        self.context = context
    }
}
