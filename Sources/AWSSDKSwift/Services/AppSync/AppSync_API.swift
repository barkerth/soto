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
Client object for interacting with AWS AppSync service.

AWS AppSync provides API actions for creating and interacting with data sources using GraphQL from your application.
*/
public struct AppSync: AWSService {

    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig
    public let context: AWSServiceContext

    // MARK: Initialization

    /// Initialize the AppSync client
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
            service: "appsync",
            serviceProtocol: .restjson,
            apiVersion: "2017-07-25",
            endpoint: endpoint,
            possibleErrorTypes: [AppSyncErrorType.self]        )
        self.context = .init(timeout: timeout ?? .seconds(20))
    }

    /// create copy of service with new context
    public func withNewContext(_ process: (AWSServiceContext) -> AWSServiceContext) -> Self {
        return Self(client: self.client, config: self.config, context: process(self.context))
    }

    // MARK: API Calls

    ///  Creates a cache for the GraphQL API.
    public func createApiCache(_ input: CreateApiCacheRequest) -> EventLoopFuture<CreateApiCacheResponse> {
        return client.execute(operation: "CreateApiCache", path: "/v1/apis/{apiId}/ApiCaches", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Creates a unique key that you can distribute to clients who are executing your API.
    public func createApiKey(_ input: CreateApiKeyRequest) -> EventLoopFuture<CreateApiKeyResponse> {
        return client.execute(operation: "CreateApiKey", path: "/v1/apis/{apiId}/apikeys", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Creates a DataSource object.
    public func createDataSource(_ input: CreateDataSourceRequest) -> EventLoopFuture<CreateDataSourceResponse> {
        return client.execute(operation: "CreateDataSource", path: "/v1/apis/{apiId}/datasources", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Creates a Function object. A function is a reusable entity. Multiple functions can be used to compose the resolver logic.
    public func createFunction(_ input: CreateFunctionRequest) -> EventLoopFuture<CreateFunctionResponse> {
        return client.execute(operation: "CreateFunction", path: "/v1/apis/{apiId}/functions", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Creates a GraphqlApi object.
    public func createGraphqlApi(_ input: CreateGraphqlApiRequest) -> EventLoopFuture<CreateGraphqlApiResponse> {
        return client.execute(operation: "CreateGraphqlApi", path: "/v1/apis", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Creates a Resolver object. A resolver converts incoming requests into a format that a data source can understand and converts the data source's responses into GraphQL.
    public func createResolver(_ input: CreateResolverRequest) -> EventLoopFuture<CreateResolverResponse> {
        return client.execute(operation: "CreateResolver", path: "/v1/apis/{apiId}/types/{typeName}/resolvers", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Creates a Type object.
    public func createType(_ input: CreateTypeRequest) -> EventLoopFuture<CreateTypeResponse> {
        return client.execute(operation: "CreateType", path: "/v1/apis/{apiId}/types", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deletes an ApiCache object.
    public func deleteApiCache(_ input: DeleteApiCacheRequest) -> EventLoopFuture<DeleteApiCacheResponse> {
        return client.execute(operation: "DeleteApiCache", path: "/v1/apis/{apiId}/ApiCaches", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Deletes an API key.
    public func deleteApiKey(_ input: DeleteApiKeyRequest) -> EventLoopFuture<DeleteApiKeyResponse> {
        return client.execute(operation: "DeleteApiKey", path: "/v1/apis/{apiId}/apikeys/{id}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Deletes a DataSource object.
    public func deleteDataSource(_ input: DeleteDataSourceRequest) -> EventLoopFuture<DeleteDataSourceResponse> {
        return client.execute(operation: "DeleteDataSource", path: "/v1/apis/{apiId}/datasources/{name}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Deletes a Function.
    public func deleteFunction(_ input: DeleteFunctionRequest) -> EventLoopFuture<DeleteFunctionResponse> {
        return client.execute(operation: "DeleteFunction", path: "/v1/apis/{apiId}/functions/{functionId}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Deletes a GraphqlApi object.
    public func deleteGraphqlApi(_ input: DeleteGraphqlApiRequest) -> EventLoopFuture<DeleteGraphqlApiResponse> {
        return client.execute(operation: "DeleteGraphqlApi", path: "/v1/apis/{apiId}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Deletes a Resolver object.
    public func deleteResolver(_ input: DeleteResolverRequest) -> EventLoopFuture<DeleteResolverResponse> {
        return client.execute(operation: "DeleteResolver", path: "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Deletes a Type object.
    public func deleteType(_ input: DeleteTypeRequest) -> EventLoopFuture<DeleteTypeResponse> {
        return client.execute(operation: "DeleteType", path: "/v1/apis/{apiId}/types/{typeName}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Flushes an ApiCache object.
    public func flushApiCache(_ input: FlushApiCacheRequest) -> EventLoopFuture<FlushApiCacheResponse> {
        return client.execute(operation: "FlushApiCache", path: "/v1/apis/{apiId}/FlushCache", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves an ApiCache object.
    public func getApiCache(_ input: GetApiCacheRequest) -> EventLoopFuture<GetApiCacheResponse> {
        return client.execute(operation: "GetApiCache", path: "/v1/apis/{apiId}/ApiCaches", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves a DataSource object.
    public func getDataSource(_ input: GetDataSourceRequest) -> EventLoopFuture<GetDataSourceResponse> {
        return client.execute(operation: "GetDataSource", path: "/v1/apis/{apiId}/datasources/{name}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Get a Function.
    public func getFunction(_ input: GetFunctionRequest) -> EventLoopFuture<GetFunctionResponse> {
        return client.execute(operation: "GetFunction", path: "/v1/apis/{apiId}/functions/{functionId}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves a GraphqlApi object.
    public func getGraphqlApi(_ input: GetGraphqlApiRequest) -> EventLoopFuture<GetGraphqlApiResponse> {
        return client.execute(operation: "GetGraphqlApi", path: "/v1/apis/{apiId}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves the introspection schema for a GraphQL API.
    public func getIntrospectionSchema(_ input: GetIntrospectionSchemaRequest) -> EventLoopFuture<GetIntrospectionSchemaResponse> {
        return client.execute(operation: "GetIntrospectionSchema", path: "/v1/apis/{apiId}/schema", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves a Resolver object.
    public func getResolver(_ input: GetResolverRequest) -> EventLoopFuture<GetResolverResponse> {
        return client.execute(operation: "GetResolver", path: "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves the current status of a schema creation operation.
    public func getSchemaCreationStatus(_ input: GetSchemaCreationStatusRequest) -> EventLoopFuture<GetSchemaCreationStatusResponse> {
        return client.execute(operation: "GetSchemaCreationStatus", path: "/v1/apis/{apiId}/schemacreation", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves a Type object.
    public func getType(_ input: GetTypeRequest) -> EventLoopFuture<GetTypeResponse> {
        return client.execute(operation: "GetType", path: "/v1/apis/{apiId}/types/{typeName}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Lists the API keys for a given API.  API keys are deleted automatically sometime after they expire. However, they may still be included in the response until they have actually been deleted. You can safely call DeleteApiKey to manually delete a key before it's automatically deleted. 
    public func listApiKeys(_ input: ListApiKeysRequest) -> EventLoopFuture<ListApiKeysResponse> {
        return client.execute(operation: "ListApiKeys", path: "/v1/apis/{apiId}/apikeys", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Lists the data sources for a given API.
    public func listDataSources(_ input: ListDataSourcesRequest) -> EventLoopFuture<ListDataSourcesResponse> {
        return client.execute(operation: "ListDataSources", path: "/v1/apis/{apiId}/datasources", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  List multiple functions.
    public func listFunctions(_ input: ListFunctionsRequest) -> EventLoopFuture<ListFunctionsResponse> {
        return client.execute(operation: "ListFunctions", path: "/v1/apis/{apiId}/functions", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Lists your GraphQL APIs.
    public func listGraphqlApis(_ input: ListGraphqlApisRequest) -> EventLoopFuture<ListGraphqlApisResponse> {
        return client.execute(operation: "ListGraphqlApis", path: "/v1/apis", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Lists the resolvers for a given API and type.
    public func listResolvers(_ input: ListResolversRequest) -> EventLoopFuture<ListResolversResponse> {
        return client.execute(operation: "ListResolvers", path: "/v1/apis/{apiId}/types/{typeName}/resolvers", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  List the resolvers that are associated with a specific function.
    public func listResolversByFunction(_ input: ListResolversByFunctionRequest) -> EventLoopFuture<ListResolversByFunctionResponse> {
        return client.execute(operation: "ListResolversByFunction", path: "/v1/apis/{apiId}/functions/{functionId}/resolvers", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Lists the tags for a resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/v1/tags/{resourceArn}", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Lists the types for a given API.
    public func listTypes(_ input: ListTypesRequest) -> EventLoopFuture<ListTypesResponse> {
        return client.execute(operation: "ListTypes", path: "/v1/apis/{apiId}/types", httpMethod: .GET, input: input, config: self.config, context: self.context)
    }

    ///  Adds a new schema to your GraphQL API. This operation is asynchronous. Use to determine when it has completed.
    public func startSchemaCreation(_ input: StartSchemaCreationRequest) -> EventLoopFuture<StartSchemaCreationResponse> {
        return client.execute(operation: "StartSchemaCreation", path: "/v1/apis/{apiId}/schemacreation", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Tags a resource with user-supplied tags.
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.execute(operation: "TagResource", path: "/v1/tags/{resourceArn}", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Untags a resource.
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.execute(operation: "UntagResource", path: "/v1/tags/{resourceArn}", httpMethod: .DELETE, input: input, config: self.config, context: self.context)
    }

    ///  Updates the cache for the GraphQL API.
    public func updateApiCache(_ input: UpdateApiCacheRequest) -> EventLoopFuture<UpdateApiCacheResponse> {
        return client.execute(operation: "UpdateApiCache", path: "/v1/apis/{apiId}/ApiCaches/update", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Updates an API key.
    public func updateApiKey(_ input: UpdateApiKeyRequest) -> EventLoopFuture<UpdateApiKeyResponse> {
        return client.execute(operation: "UpdateApiKey", path: "/v1/apis/{apiId}/apikeys/{id}", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Updates a DataSource object.
    public func updateDataSource(_ input: UpdateDataSourceRequest) -> EventLoopFuture<UpdateDataSourceResponse> {
        return client.execute(operation: "UpdateDataSource", path: "/v1/apis/{apiId}/datasources/{name}", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Updates a Function object.
    public func updateFunction(_ input: UpdateFunctionRequest) -> EventLoopFuture<UpdateFunctionResponse> {
        return client.execute(operation: "UpdateFunction", path: "/v1/apis/{apiId}/functions/{functionId}", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Updates a GraphqlApi object.
    public func updateGraphqlApi(_ input: UpdateGraphqlApiRequest) -> EventLoopFuture<UpdateGraphqlApiResponse> {
        return client.execute(operation: "UpdateGraphqlApi", path: "/v1/apis/{apiId}", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Updates a Resolver object.
    public func updateResolver(_ input: UpdateResolverRequest) -> EventLoopFuture<UpdateResolverResponse> {
        return client.execute(operation: "UpdateResolver", path: "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Updates a Type object.
    public func updateType(_ input: UpdateTypeRequest) -> EventLoopFuture<UpdateTypeResponse> {
        return client.execute(operation: "UpdateType", path: "/v1/apis/{apiId}/types/{typeName}", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }
}

extension AppSync {
    /// internal initialiser used by `withNewContext`
    init(client: AWSClient, config: AWSServiceConfig, context: AWSServiceContext) {
        self.client = client
        self.config = config
        self.context = context
    }
}
