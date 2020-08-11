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

extension S3Control {

    ///  Returns a list of the access points currently associated with the specified bucket. You can retrieve up to 1000 access points per call. If the specified bucket has more than 1,000 access points (or the number specified in maxResults, whichever is less), the response will include a continuation token that you can use to list the additional access points.
    public func listAccessPointsPaginator(
        _ input: ListAccessPointsRequest,
        onPage: @escaping (ListAccessPointsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAccessPoints,
            tokenKey: \ListAccessPointsResult.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

    ///  Lists current Amazon S3 Batch Operations jobs and jobs that have ended within the last 30 days for the AWS account making the request. For more information, see Amazon S3 Batch Operations in the Amazon Simple Storage Service Developer Guide. Related actions include:     CreateJob     DescribeJob     UpdateJobPriority     UpdateJobStatus   
    public func listJobsPaginator(
        _ input: ListJobsRequest,
        onPage: @escaping (ListJobsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listJobs,
            tokenKey: \ListJobsResult.nextToken,
            context: self.context,
            onPage: onPage
        )
    }

}

extension S3Control.ListAccessPointsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> S3Control.ListAccessPointsRequest {
        return .init(
            accountId: self.accountId,
            bucket: self.bucket,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension S3Control.ListJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> S3Control.ListJobsRequest {
        return .init(
            accountId: self.accountId,
            jobStatuses: self.jobStatuses,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

