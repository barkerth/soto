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

extension OpsWorksCM {

    ///   Describes backups. The results are ordered by time, with newest backups first. If you do not specify a BackupId or ServerName, the command returns all backups.   This operation is synchronous.   A ResourceNotFoundException is thrown when the backup does not exist. A ValidationException is raised when parameters of the request are not valid. 
    public func describeBackupsPaginator(
        _ input: DescribeBackupsRequest,
        onPage: @escaping (DescribeBackupsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeBackups,
            tokenKey: \DescribeBackupsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///   Describes events for a specified server. Results are ordered by time, with newest events first.   This operation is synchronous.   A ResourceNotFoundException is thrown when the server does not exist. A ValidationException is raised when parameters of the request are not valid. 
    public func describeEventsPaginator(
        _ input: DescribeEventsRequest,
        onPage: @escaping (DescribeEventsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeEvents,
            tokenKey: \DescribeEventsResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///   Lists all configuration management servers that are identified with your account. Only the stored results from Amazon DynamoDB are returned. AWS OpsWorks CM does not query other services.   This operation is synchronous.   A ResourceNotFoundException is thrown when the server does not exist. A ValidationException is raised when parameters of the request are not valid. 
    public func describeServersPaginator(
        _ input: DescribeServersRequest,
        onPage: @escaping (DescribeServersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeServers,
            tokenKey: \DescribeServersResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Returns a list of tags that are applied to the specified AWS OpsWorks for Chef Automate or AWS OpsWorks for Puppet Enterprise servers or backups.
    public func listTagsForResourcePaginator(
        _ input: ListTagsForResourceRequest,
        onPage: @escaping (ListTagsForResourceResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTagsForResource,
            tokenKey: \ListTagsForResourceResponse.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

}

extension OpsWorksCM.DescribeBackupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> OpsWorksCM.DescribeBackupsRequest {
        return .init(
            backupId: self.backupId,
            maxResults: self.maxResults,
            nextToken: token,
            serverName: self.serverName
        )

    }
}

extension OpsWorksCM.DescribeEventsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> OpsWorksCM.DescribeEventsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            serverName: self.serverName
        )

    }
}

extension OpsWorksCM.DescribeServersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> OpsWorksCM.DescribeServersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            serverName: self.serverName
        )

    }
}

extension OpsWorksCM.ListTagsForResourceRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> OpsWorksCM.ListTagsForResourceRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )

    }
}

