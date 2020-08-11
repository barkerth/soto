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
Client object for interacting with AWS SNS service.

Amazon Simple Notification Service Amazon Simple Notification Service (Amazon SNS) is a web service that enables you to build distributed web-enabled applications. Applications can use Amazon SNS to easily push real-time notification messages to interested subscribers over multiple delivery protocols. For more information about this product see https://aws.amazon.com/sns. For detailed information about Amazon SNS features and their associated API calls, see the Amazon SNS Developer Guide.  We also provide SDKs that enable you to access Amazon SNS from your preferred programming language. The SDKs contain functionality that automatically takes care of tasks such as: cryptographically signing your service requests, retrying requests, and handling error responses. For a list of available SDKs, go to Tools for Amazon Web Services. 
*/
public struct SNS: AWSService {

    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig
    public let context: AWSServiceContext

    // MARK: Initialization

    /// Initialize the SNS client
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
            service: "sns",
            serviceProtocol: .query,
            apiVersion: "2010-03-31",
            endpoint: endpoint,
            serviceEndpoints: ["us-gov-east-1": "sns.us-gov-east-1.amazonaws.com", "us-gov-west-1": "sns.us-gov-west-1.amazonaws.com"],
            possibleErrorTypes: [SNSErrorType.self]        )
        self.context = .init(timeout: timeout ?? .seconds(20))
    }

    /// create copy of service with new context
    public func withNewContext(_ process: (AWSServiceContext) -> AWSServiceContext) -> Self {
        return Self(client: self.client, config: self.config, context: process(self.context))
    }

    // MARK: API Calls

    ///  Adds a statement to a topic's access control policy, granting access for the specified AWS accounts to the specified actions.
    @discardableResult public func addPermission(_ input: AddPermissionInput) -> EventLoopFuture<Void> {
        return client.execute(operation: "AddPermission", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Accepts a phone number and indicates whether the phone holder has opted out of receiving SMS messages from your account. You cannot send SMS messages to a number that is opted out. To resume sending messages, you can opt in the number by using the OptInPhoneNumber action.
    public func checkIfPhoneNumberIsOptedOut(_ input: CheckIfPhoneNumberIsOptedOutInput) -> EventLoopFuture<CheckIfPhoneNumberIsOptedOutResponse> {
        return client.execute(operation: "CheckIfPhoneNumberIsOptedOut", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Verifies an endpoint owner's intent to receive messages by validating the token sent to the endpoint by an earlier Subscribe action. If the token is valid, the action creates a new subscription and returns its Amazon Resource Name (ARN). This call requires an AWS signature only when the AuthenticateOnUnsubscribe flag is set to "true".
    public func confirmSubscription(_ input: ConfirmSubscriptionInput) -> EventLoopFuture<ConfirmSubscriptionResponse> {
        return client.execute(operation: "ConfirmSubscription", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Creates a platform application object for one of the supported push notification services, such as APNS and GCM (Firebase Cloud Messaging), to which devices and mobile apps may register. You must specify PlatformPrincipal and PlatformCredential attributes when using the CreatePlatformApplication action.  PlatformPrincipal and PlatformCredential are received from the notification service.   For ADM, PlatformPrincipal is client id and PlatformCredential is client secret.   For Baidu, PlatformPrincipal is API key and PlatformCredential is secret key.   For APNS and APNS_SANDBOX, PlatformPrincipal is SSL certificate and PlatformCredential is private key.   For GCM (Firebase Cloud Messaging), there is no PlatformPrincipal and the PlatformCredential is API key.   For MPNS, PlatformPrincipal is TLS certificate and PlatformCredential is private key.   For WNS, PlatformPrincipal is Package Security Identifier and PlatformCredential is secret key.   You can use the returned PlatformApplicationArn as an attribute for the CreatePlatformEndpoint action.
    public func createPlatformApplication(_ input: CreatePlatformApplicationInput) -> EventLoopFuture<CreatePlatformApplicationResponse> {
        return client.execute(operation: "CreatePlatformApplication", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Creates an endpoint for a device and mobile app on one of the supported push notification services, such as GCM (Firebase Cloud Messaging) and APNS. CreatePlatformEndpoint requires the PlatformApplicationArn that is returned from CreatePlatformApplication. You can use the returned EndpointArn to send a message to a mobile app or by the Subscribe action for subscription to a topic. The CreatePlatformEndpoint action is idempotent, so if the requester already owns an endpoint with the same device token and attributes, that endpoint's ARN is returned without creating a new endpoint. For more information, see Using Amazon SNS Mobile Push Notifications.  When using CreatePlatformEndpoint with Baidu, two attributes must be provided: ChannelId and UserId. The token field must also contain the ChannelId. For more information, see Creating an Amazon SNS Endpoint for Baidu. 
    public func createPlatformEndpoint(_ input: CreatePlatformEndpointInput) -> EventLoopFuture<CreateEndpointResponse> {
        return client.execute(operation: "CreatePlatformEndpoint", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Creates a topic to which notifications can be published. Users can create at most 100,000 topics. For more information, see https://aws.amazon.com/sns. This action is idempotent, so if the requester already owns a topic with the specified name, that topic's ARN is returned without creating a new topic.
    public func createTopic(_ input: CreateTopicInput) -> EventLoopFuture<CreateTopicResponse> {
        return client.execute(operation: "CreateTopic", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deletes the endpoint for a device and mobile app from Amazon SNS. This action is idempotent. For more information, see Using Amazon SNS Mobile Push Notifications.  When you delete an endpoint that is also subscribed to a topic, then you must also unsubscribe the endpoint from the topic.
    @discardableResult public func deleteEndpoint(_ input: DeleteEndpointInput) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteEndpoint", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deletes a platform application object for one of the supported push notification services, such as APNS and GCM (Firebase Cloud Messaging). For more information, see Using Amazon SNS Mobile Push Notifications. 
    @discardableResult public func deletePlatformApplication(_ input: DeletePlatformApplicationInput) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeletePlatformApplication", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deletes a topic and all its subscriptions. Deleting a topic might prevent some messages previously sent to the topic from being delivered to subscribers. This action is idempotent, so deleting a topic that does not exist does not result in an error.
    @discardableResult public func deleteTopic(_ input: DeleteTopicInput) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteTopic", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves the endpoint attributes for a device on one of the supported push notification services, such as GCM (Firebase Cloud Messaging) and APNS. For more information, see Using Amazon SNS Mobile Push Notifications. 
    public func getEndpointAttributes(_ input: GetEndpointAttributesInput) -> EventLoopFuture<GetEndpointAttributesResponse> {
        return client.execute(operation: "GetEndpointAttributes", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Retrieves the attributes of the platform application object for the supported push notification services, such as APNS and GCM (Firebase Cloud Messaging). For more information, see Using Amazon SNS Mobile Push Notifications. 
    public func getPlatformApplicationAttributes(_ input: GetPlatformApplicationAttributesInput) -> EventLoopFuture<GetPlatformApplicationAttributesResponse> {
        return client.execute(operation: "GetPlatformApplicationAttributes", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Returns the settings for sending SMS messages from your account. These settings are set with the SetSMSAttributes action.
    public func getSMSAttributes(_ input: GetSMSAttributesInput) -> EventLoopFuture<GetSMSAttributesResponse> {
        return client.execute(operation: "GetSMSAttributes", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Returns all of the properties of a subscription.
    public func getSubscriptionAttributes(_ input: GetSubscriptionAttributesInput) -> EventLoopFuture<GetSubscriptionAttributesResponse> {
        return client.execute(operation: "GetSubscriptionAttributes", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Returns all of the properties of a topic. Topic properties returned might differ based on the authorization of the user.
    public func getTopicAttributes(_ input: GetTopicAttributesInput) -> EventLoopFuture<GetTopicAttributesResponse> {
        return client.execute(operation: "GetTopicAttributes", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Lists the endpoints and endpoint attributes for devices in a supported push notification service, such as GCM (Firebase Cloud Messaging) and APNS. The results for ListEndpointsByPlatformApplication are paginated and return a limited list of endpoints, up to 100. If additional records are available after the first page results, then a NextToken string will be returned. To receive the next page, you call ListEndpointsByPlatformApplication again using the NextToken string received from the previous call. When there are no more records to return, NextToken will be null. For more information, see Using Amazon SNS Mobile Push Notifications.  This action is throttled at 30 transactions per second (TPS).
    public func listEndpointsByPlatformApplication(_ input: ListEndpointsByPlatformApplicationInput) -> EventLoopFuture<ListEndpointsByPlatformApplicationResponse> {
        return client.execute(operation: "ListEndpointsByPlatformApplication", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Returns a list of phone numbers that are opted out, meaning you cannot send SMS messages to them. The results for ListPhoneNumbersOptedOut are paginated, and each page returns up to 100 phone numbers. If additional phone numbers are available after the first page of results, then a NextToken string will be returned. To receive the next page, you call ListPhoneNumbersOptedOut again using the NextToken string received from the previous call. When there are no more records to return, NextToken will be null.
    public func listPhoneNumbersOptedOut(_ input: ListPhoneNumbersOptedOutInput) -> EventLoopFuture<ListPhoneNumbersOptedOutResponse> {
        return client.execute(operation: "ListPhoneNumbersOptedOut", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Lists the platform application objects for the supported push notification services, such as APNS and GCM (Firebase Cloud Messaging). The results for ListPlatformApplications are paginated and return a limited list of applications, up to 100. If additional records are available after the first page results, then a NextToken string will be returned. To receive the next page, you call ListPlatformApplications using the NextToken string received from the previous call. When there are no more records to return, NextToken will be null. For more information, see Using Amazon SNS Mobile Push Notifications.  This action is throttled at 15 transactions per second (TPS).
    public func listPlatformApplications(_ input: ListPlatformApplicationsInput) -> EventLoopFuture<ListPlatformApplicationsResponse> {
        return client.execute(operation: "ListPlatformApplications", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Returns a list of the requester's subscriptions. Each call returns a limited list of subscriptions, up to 100. If there are more subscriptions, a NextToken is also returned. Use the NextToken parameter in a new ListSubscriptions call to get further results. This action is throttled at 30 transactions per second (TPS).
    public func listSubscriptions(_ input: ListSubscriptionsInput) -> EventLoopFuture<ListSubscriptionsResponse> {
        return client.execute(operation: "ListSubscriptions", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Returns a list of the subscriptions to a specific topic. Each call returns a limited list of subscriptions, up to 100. If there are more subscriptions, a NextToken is also returned. Use the NextToken parameter in a new ListSubscriptionsByTopic call to get further results. This action is throttled at 30 transactions per second (TPS).
    public func listSubscriptionsByTopic(_ input: ListSubscriptionsByTopicInput) -> EventLoopFuture<ListSubscriptionsByTopicResponse> {
        return client.execute(operation: "ListSubscriptionsByTopic", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  List all tags added to the specified Amazon SNS topic. For an overview, see Amazon SNS Tags in the Amazon Simple Notification Service Developer Guide.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Returns a list of the requester's topics. Each call returns a limited list of topics, up to 100. If there are more topics, a NextToken is also returned. Use the NextToken parameter in a new ListTopics call to get further results. This action is throttled at 30 transactions per second (TPS).
    public func listTopics(_ input: ListTopicsInput) -> EventLoopFuture<ListTopicsResponse> {
        return client.execute(operation: "ListTopics", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Use this request to opt in a phone number that is opted out, which enables you to resume sending SMS messages to the number. You can opt in a phone number only once every 30 days.
    public func optInPhoneNumber(_ input: OptInPhoneNumberInput) -> EventLoopFuture<OptInPhoneNumberResponse> {
        return client.execute(operation: "OptInPhoneNumber", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Sends a message to an Amazon SNS topic, a text message (SMS message) directly to a phone number, or a message to a mobile platform endpoint (when you specify the TargetArn). If you send a message to a topic, Amazon SNS delivers the message to each endpoint that is subscribed to the topic. The format of the message depends on the notification protocol for each subscribed endpoint. When a messageId is returned, the message has been saved and Amazon SNS will attempt to deliver it shortly. To use the Publish action for sending a message to a mobile endpoint, such as an app on a Kindle device or mobile phone, you must specify the EndpointArn for the TargetArn parameter. The EndpointArn is returned when making a call with the CreatePlatformEndpoint action.  For more information about formatting messages, see Send Custom Platform-Specific Payloads in Messages to Mobile Devices.   You can publish messages only to topics and endpoints in the same AWS Region. 
    public func publish(_ input: PublishInput) -> EventLoopFuture<PublishResponse> {
        return client.execute(operation: "Publish", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Removes a statement from a topic's access control policy.
    @discardableResult public func removePermission(_ input: RemovePermissionInput) -> EventLoopFuture<Void> {
        return client.execute(operation: "RemovePermission", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Sets the attributes for an endpoint for a device on one of the supported push notification services, such as GCM (Firebase Cloud Messaging) and APNS. For more information, see Using Amazon SNS Mobile Push Notifications. 
    @discardableResult public func setEndpointAttributes(_ input: SetEndpointAttributesInput) -> EventLoopFuture<Void> {
        return client.execute(operation: "SetEndpointAttributes", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Sets the attributes of the platform application object for the supported push notification services, such as APNS and GCM (Firebase Cloud Messaging). For more information, see Using Amazon SNS Mobile Push Notifications. For information on configuring attributes for message delivery status, see Using Amazon SNS Application Attributes for Message Delivery Status. 
    @discardableResult public func setPlatformApplicationAttributes(_ input: SetPlatformApplicationAttributesInput) -> EventLoopFuture<Void> {
        return client.execute(operation: "SetPlatformApplicationAttributes", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Use this request to set the default settings for sending SMS messages and receiving daily SMS usage reports. You can override some of these settings for a single message when you use the Publish action with the MessageAttributes.entry.N parameter. For more information, see Sending an SMS Message in the Amazon SNS Developer Guide.
    public func setSMSAttributes(_ input: SetSMSAttributesInput) -> EventLoopFuture<SetSMSAttributesResponse> {
        return client.execute(operation: "SetSMSAttributes", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Allows a subscription owner to set an attribute of the subscription to a new value.
    @discardableResult public func setSubscriptionAttributes(_ input: SetSubscriptionAttributesInput) -> EventLoopFuture<Void> {
        return client.execute(operation: "SetSubscriptionAttributes", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Allows a topic owner to set an attribute of the topic to a new value.
    @discardableResult public func setTopicAttributes(_ input: SetTopicAttributesInput) -> EventLoopFuture<Void> {
        return client.execute(operation: "SetTopicAttributes", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Subscribes an endpoint to an Amazon SNS topic. If the endpoint type is HTTP/S or email, or if the endpoint and the topic are not in the same AWS account, the endpoint owner must the ConfirmSubscription action to confirm the subscription. You call the ConfirmSubscription action with the token from the subscription response. Confirmation tokens are valid for three days. This action is throttled at 100 transactions per second (TPS).
    public func subscribe(_ input: SubscribeInput) -> EventLoopFuture<SubscribeResponse> {
        return client.execute(operation: "Subscribe", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Add tags to the specified Amazon SNS topic. For an overview, see Amazon SNS Tags in the Amazon SNS Developer Guide. When you use topic tags, keep the following guidelines in mind:   Adding more than 50 tags to a topic isn't recommended.   Tags don't have any semantic meaning. Amazon SNS interprets tags as character strings.   Tags are case-sensitive.   A new tag with a key identical to that of an existing tag overwrites the existing tag.   Tagging actions are limited to 10 TPS per AWS account, per AWS region. If your application requires a higher throughput, file a technical support request.  
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.execute(operation: "TagResource", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deletes a subscription. If the subscription requires authentication for deletion, only the owner of the subscription or the topic's owner can unsubscribe, and an AWS signature is required. If the Unsubscribe call does not require authentication and the requester is not the subscription owner, a final cancellation message is delivered to the endpoint, so that the endpoint owner can easily resubscribe to the topic if the Unsubscribe request was unintended. This action is throttled at 100 transactions per second (TPS).
    @discardableResult public func unsubscribe(_ input: UnsubscribeInput) -> EventLoopFuture<Void> {
        return client.execute(operation: "Unsubscribe", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Remove tags from the specified Amazon SNS topic. For an overview, see Amazon SNS Tags in the Amazon SNS Developer Guide.
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }
}

extension SNS {
    /// internal initialiser used by `withNewContext`
    init(client: AWSClient, config: AWSServiceConfig, context: AWSServiceContext) {
        self.client = client
        self.config = config
        self.context = context
    }
}
