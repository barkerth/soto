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

extension WorkSpaces {

    ///  Retrieves a list that describes the available WorkSpace bundles. You can filter the results using either bundle ID or owner, but not both.
    public func describeWorkspaceBundlesPaginator(
        _ input: DescribeWorkspaceBundlesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeWorkspaceBundlesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeWorkspaceBundles,
            tokenKey: \DescribeWorkspaceBundlesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Describes the available directories that are registered with Amazon WorkSpaces.
    public func describeWorkspaceDirectoriesPaginator(
        _ input: DescribeWorkspaceDirectoriesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeWorkspaceDirectoriesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeWorkspaceDirectories,
            tokenKey: \DescribeWorkspaceDirectoriesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Describes the specified WorkSpaces. You can filter the results by using the bundle identifier, directory identifier, or owner, but you can specify only one filter at a time.
    public func describeWorkspacesPaginator(
        _ input: DescribeWorkspacesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeWorkspacesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeWorkspaces,
            tokenKey: \DescribeWorkspacesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

}

extension WorkSpaces.DescribeWorkspaceBundlesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WorkSpaces.DescribeWorkspaceBundlesRequest {
        return .init(
            bundleIds: self.bundleIds,
            nextToken: token,
            owner: self.owner
        )

    }
}

extension WorkSpaces.DescribeWorkspaceDirectoriesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WorkSpaces.DescribeWorkspaceDirectoriesRequest {
        return .init(
            directoryIds: self.directoryIds,
            limit: self.limit,
            nextToken: token
        )

    }
}

extension WorkSpaces.DescribeWorkspacesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WorkSpaces.DescribeWorkspacesRequest {
        return .init(
            bundleId: self.bundleId,
            directoryId: self.directoryId,
            limit: self.limit,
            nextToken: token,
            userName: self.userName,
            workspaceIds: self.workspaceIds
        )

    }
}

