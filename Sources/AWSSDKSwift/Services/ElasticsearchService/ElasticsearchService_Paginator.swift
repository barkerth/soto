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

extension ElasticsearchService {

    ///  Lists all the inbound cross-cluster search connections for a destination domain.
    public func describeInboundCrossClusterSearchConnectionsPaginator(
        _ input: DescribeInboundCrossClusterSearchConnectionsRequest,
        onPage: @escaping (DescribeInboundCrossClusterSearchConnectionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeInboundCrossClusterSearchConnections,
            tokenKey: \DescribeInboundCrossClusterSearchConnectionsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists all the outbound cross-cluster search connections for a source domain.
    public func describeOutboundCrossClusterSearchConnectionsPaginator(
        _ input: DescribeOutboundCrossClusterSearchConnectionsRequest,
        onPage: @escaping (DescribeOutboundCrossClusterSearchConnectionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeOutboundCrossClusterSearchConnections,
            tokenKey: \DescribeOutboundCrossClusterSearchConnectionsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Describes all packages available to Amazon ES. Includes options for filtering, limiting the number of results, and pagination.
    public func describePackagesPaginator(
        _ input: DescribePackagesRequest,
        onPage: @escaping (DescribePackagesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describePackages,
            tokenKey: \DescribePackagesResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists available reserved Elasticsearch instance offerings.
    public func describeReservedElasticsearchInstanceOfferingsPaginator(
        _ input: DescribeReservedElasticsearchInstanceOfferingsRequest,
        onPage: @escaping (DescribeReservedElasticsearchInstanceOfferingsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeReservedElasticsearchInstanceOfferings,
            tokenKey: \DescribeReservedElasticsearchInstanceOfferingsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Returns information about reserved Elasticsearch instances for this account.
    public func describeReservedElasticsearchInstancesPaginator(
        _ input: DescribeReservedElasticsearchInstancesRequest,
        onPage: @escaping (DescribeReservedElasticsearchInstancesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeReservedElasticsearchInstances,
            tokenKey: \DescribeReservedElasticsearchInstancesResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Retrieves the complete history of the last 10 upgrades that were performed on the domain.
    public func getUpgradeHistoryPaginator(
        _ input: GetUpgradeHistoryRequest,
        onPage: @escaping (GetUpgradeHistoryResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getUpgradeHistory,
            tokenKey: \GetUpgradeHistoryResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists all Amazon ES domains associated with the package.
    public func listDomainsForPackagePaginator(
        _ input: ListDomainsForPackageRequest,
        onPage: @escaping (ListDomainsForPackageResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDomainsForPackage,
            tokenKey: \ListDomainsForPackageResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  List all Elasticsearch instance types that are supported for given ElasticsearchVersion
    public func listElasticsearchInstanceTypesPaginator(
        _ input: ListElasticsearchInstanceTypesRequest,
        onPage: @escaping (ListElasticsearchInstanceTypesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listElasticsearchInstanceTypes,
            tokenKey: \ListElasticsearchInstanceTypesResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  List all supported Elasticsearch versions
    public func listElasticsearchVersionsPaginator(
        _ input: ListElasticsearchVersionsRequest,
        onPage: @escaping (ListElasticsearchVersionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listElasticsearchVersions,
            tokenKey: \ListElasticsearchVersionsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists all packages associated with the Amazon ES domain.
    public func listPackagesForDomainPaginator(
        _ input: ListPackagesForDomainRequest,
        onPage: @escaping (ListPackagesForDomainResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPackagesForDomain,
            tokenKey: \ListPackagesForDomainResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

}

extension ElasticsearchService.DescribeInboundCrossClusterSearchConnectionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticsearchService.DescribeInboundCrossClusterSearchConnectionsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension ElasticsearchService.DescribeOutboundCrossClusterSearchConnectionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticsearchService.DescribeOutboundCrossClusterSearchConnectionsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension ElasticsearchService.DescribePackagesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticsearchService.DescribePackagesRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension ElasticsearchService.DescribeReservedElasticsearchInstanceOfferingsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticsearchService.DescribeReservedElasticsearchInstanceOfferingsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            reservedElasticsearchInstanceOfferingId: self.reservedElasticsearchInstanceOfferingId
        )

    }
}

extension ElasticsearchService.DescribeReservedElasticsearchInstancesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticsearchService.DescribeReservedElasticsearchInstancesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            reservedElasticsearchInstanceId: self.reservedElasticsearchInstanceId
        )

    }
}

extension ElasticsearchService.GetUpgradeHistoryRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticsearchService.GetUpgradeHistoryRequest {
        return .init(
            domainName: self.domainName,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension ElasticsearchService.ListDomainsForPackageRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticsearchService.ListDomainsForPackageRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            packageID: self.packageID
        )

    }
}

extension ElasticsearchService.ListElasticsearchInstanceTypesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticsearchService.ListElasticsearchInstanceTypesRequest {
        return .init(
            domainName: self.domainName,
            elasticsearchVersion: self.elasticsearchVersion,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension ElasticsearchService.ListElasticsearchVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticsearchService.ListElasticsearchVersionsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension ElasticsearchService.ListPackagesForDomainRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticsearchService.ListPackagesForDomainRequest {
        return .init(
            domainName: self.domainName,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

