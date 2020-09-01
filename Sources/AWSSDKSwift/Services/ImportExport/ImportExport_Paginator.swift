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

extension ImportExport {

    ///  This operation returns the jobs associated with the requester. AWS Import/Export lists the jobs in reverse chronological order based on the date of creation. For example if Job Test1 was created 2009Dec30 and Test2 was created 2010Feb05, the ListJobs operation would return Test2 followed by Test1.
    public func listJobsPaginator(
        _ input: ListJobsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListJobsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listJobs,
            tokenKey: \ListJobsOutput.jobs?.last?.jobId,
            moreResultsKey: \ListJobsOutput.isTruncated,
            on: eventLoop,
            onPage: onPage
        )
    }

}

extension ImportExport.ListJobsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ImportExport.ListJobsInput {
        return .init(
            aPIVersion: self.aPIVersion,
            marker: token,
            maxJobs: self.maxJobs
        )

    }
}

