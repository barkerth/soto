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
Client object for interacting with AWS SSOOIDC service.

AWS Single Sign-On (SSO) OpenID Connect (OIDC) is a web service that enables a client (such as AWS CLI or a native application) to register with AWS SSO. The service also enables the client to fetch the user’s access token upon successful authentication and authorization with AWS SSO. This service conforms with the OAuth 2.0 based implementation of the device authorization grant standard (https://tools.ietf.org/html/rfc8628). For general information about AWS SSO, see What is AWS Single Sign-On? in the AWS SSO User Guide. This API reference guide describes the AWS SSO OIDC operations that you can call programatically and includes detailed information on data types and errors.  AWS provides SDKs that consist of libraries and sample code for various programming languages and platforms such as Java, Ruby, .Net, iOS, and Android. The SDKs provide a convenient way to create programmatic access to AWS SSO and other AWS services. For more information about the AWS SDKs, including how to download and install them, see Tools for Amazon Web Services. 
*/
public struct SSOOIDC: AWSService {

    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig
    public let context: AWSServiceContext

    // MARK: Initialization

    /// Initialize the SSOOIDC client
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
            service: "oidc",
            signingName: "awsssooidc",
            serviceProtocol: .restjson,
            apiVersion: "2019-06-10",
            endpoint: endpoint,
            serviceEndpoints: ["ap-southeast-1": "oidc.ap-southeast-1.amazonaws.com", "ap-southeast-2": "oidc.ap-southeast-2.amazonaws.com", "ca-central-1": "oidc.ca-central-1.amazonaws.com", "eu-central-1": "oidc.eu-central-1.amazonaws.com", "eu-north-1": "oidc.eu-north-1.amazonaws.com", "eu-west-1": "oidc.eu-west-1.amazonaws.com", "eu-west-2": "oidc.eu-west-2.amazonaws.com", "us-east-1": "oidc.us-east-1.amazonaws.com", "us-east-2": "oidc.us-east-2.amazonaws.com", "us-west-2": "oidc.us-west-2.amazonaws.com"],
            possibleErrorTypes: [SSOOIDCErrorType.self]        )
        self.context = .init(timeout: timeout ?? .seconds(20))
    }

    /// create copy of service with new context
    public func withNewContext(_ process: (AWSServiceContext) -> AWSServiceContext) -> Self {
        return Self(client: self.client, config: self.config, context: process(self.context))
    }

    // MARK: API Calls

    ///  Creates and returns an access token for the authorized client. The access token issued will be used to fetch short-term credentials for the assigned roles in the AWS account.
    public func createToken(_ input: CreateTokenRequest) -> EventLoopFuture<CreateTokenResponse> {
        return client.execute(operation: "CreateToken", path: "/token", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Registers a client with AWS SSO. This allows clients to initiate device authorization. The output should be persisted for reuse through many authentication requests.
    public func registerClient(_ input: RegisterClientRequest) -> EventLoopFuture<RegisterClientResponse> {
        return client.execute(operation: "RegisterClient", path: "/client/register", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Initiates device authorization by requesting a pair of verification codes from the authorization service.
    public func startDeviceAuthorization(_ input: StartDeviceAuthorizationRequest) -> EventLoopFuture<StartDeviceAuthorizationResponse> {
        return client.execute(operation: "StartDeviceAuthorization", path: "/device_authorization", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }
}

extension SSOOIDC {
    /// internal initialiser used by `withNewContext`
    init(client: AWSClient, config: AWSServiceConfig, context: AWSServiceContext) {
        self.client = client
        self.config = config
        self.context = context
    }
}
