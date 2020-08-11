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

extension Route53Resolver {

    ///  Gets the IP addresses for a specified resolver endpoint.
    public func listResolverEndpointIpAddressesPaginator(
        _ input: ListResolverEndpointIpAddressesRequest,
        onPage: @escaping (ListResolverEndpointIpAddressesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listResolverEndpointIpAddresses,
            tokenKey: \ListResolverEndpointIpAddressesResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists all the resolver endpoints that were created using the current AWS account.
    public func listResolverEndpointsPaginator(
        _ input: ListResolverEndpointsRequest,
        onPage: @escaping (ListResolverEndpointsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listResolverEndpoints,
            tokenKey: \ListResolverEndpointsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists the associations that were created between resolver rules and VPCs using the current AWS account.
    public func listResolverRuleAssociationsPaginator(
        _ input: ListResolverRuleAssociationsRequest,
        onPage: @escaping (ListResolverRuleAssociationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listResolverRuleAssociations,
            tokenKey: \ListResolverRuleAssociationsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists the resolver rules that were created using the current AWS account.
    public func listResolverRulesPaginator(
        _ input: ListResolverRulesRequest,
        onPage: @escaping (ListResolverRulesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listResolverRules,
            tokenKey: \ListResolverRulesResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

}

extension Route53Resolver.ListResolverEndpointIpAddressesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53Resolver.ListResolverEndpointIpAddressesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resolverEndpointId: self.resolverEndpointId
        )

    }
}

extension Route53Resolver.ListResolverEndpointsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53Resolver.ListResolverEndpointsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Route53Resolver.ListResolverRuleAssociationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53Resolver.ListResolverRuleAssociationsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Route53Resolver.ListResolverRulesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53Resolver.ListResolverRulesRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

