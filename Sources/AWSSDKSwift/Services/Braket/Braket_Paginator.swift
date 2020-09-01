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

extension Braket {

    ///  Searches for devices using the specified filters.
    public func searchDevicesPaginator(
        _ input: SearchDevicesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (SearchDevicesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: searchDevices,
            tokenKey: \SearchDevicesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Searches for tasks that match the specified filter values.
    public func searchQuantumTasksPaginator(
        _ input: SearchQuantumTasksRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (SearchQuantumTasksResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: searchQuantumTasks,
            tokenKey: \SearchQuantumTasksResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

}

extension Braket.SearchDevicesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Braket.SearchDevicesRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Braket.SearchQuantumTasksRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Braket.SearchQuantumTasksRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

