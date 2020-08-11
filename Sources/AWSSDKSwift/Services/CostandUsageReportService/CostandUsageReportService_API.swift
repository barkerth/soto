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
Client object for interacting with AWS CostandUsageReportService service.

The AWS Cost and Usage Report API enables you to programmatically create, query, and delete AWS Cost and Usage report definitions. AWS Cost and Usage reports track the monthly AWS costs and usage associated with your AWS account. The report contains line items for each unique combination of AWS product, usage type, and operation that your AWS account uses. You can configure the AWS Cost and Usage report to show only the data that you want, using the AWS Cost and Usage API. Service Endpoint The AWS Cost and Usage Report API provides the following endpoint:   cur.us-east-1.amazonaws.com  
*/
public struct CostandUsageReportService: AWSService {

    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig
    public let context: AWSServiceContext

    // MARK: Initialization

    /// Initialize the CostandUsageReportService client
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
            amzTarget: "AWSOrigamiServiceGatewayService",
            service: "cur",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-01-06",
            endpoint: endpoint,
            possibleErrorTypes: [CostandUsageReportServiceErrorType.self]        )
        self.context = .init(timeout: timeout ?? .seconds(20))
    }

    /// create copy of service with new context
    public func withNewContext(_ process: (AWSServiceContext) -> AWSServiceContext) -> Self {
        return Self(client: self.client, config: self.config, context: process(self.context))
    }

    // MARK: API Calls

    ///  Deletes the specified report.
    public func deleteReportDefinition(_ input: DeleteReportDefinitionRequest) -> EventLoopFuture<DeleteReportDefinitionResponse> {
        return client.execute(operation: "DeleteReportDefinition", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Lists the AWS Cost and Usage reports available to this account.
    public func describeReportDefinitions(_ input: DescribeReportDefinitionsRequest) -> EventLoopFuture<DescribeReportDefinitionsResponse> {
        return client.execute(operation: "DescribeReportDefinitions", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Allows you to programatically update your report preferences.
    public func modifyReportDefinition(_ input: ModifyReportDefinitionRequest) -> EventLoopFuture<ModifyReportDefinitionResponse> {
        return client.execute(operation: "ModifyReportDefinition", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Creates a new report using the description that you provide.
    public func putReportDefinition(_ input: PutReportDefinitionRequest) -> EventLoopFuture<PutReportDefinitionResponse> {
        return client.execute(operation: "PutReportDefinition", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }
}

extension CostandUsageReportService {
    /// internal initialiser used by `withNewContext`
    init(client: AWSClient, config: AWSServiceConfig, context: AWSServiceContext) {
        self.client = client
        self.config = config
        self.context = context
    }
}
