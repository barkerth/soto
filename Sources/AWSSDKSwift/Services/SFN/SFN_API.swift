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
Client object for interacting with AWS SFN service.

AWS Step Functions AWS Step Functions is a service that lets you coordinate the components of distributed applications and microservices using visual workflows. You can use Step Functions to build applications from individual components, each of which performs a discrete function, or task, allowing you to scale and change applications quickly. Step Functions provides a console that helps visualize the components of your application as a series of steps. Step Functions automatically triggers and tracks each step, and retries steps when there are errors, so your application executes predictably and in the right order every time. Step Functions logs the state of each step, so you can quickly diagnose and debug any issues. Step Functions manages operations and underlying infrastructure to ensure your application is available at any scale. You can run tasks on AWS, your own servers, or any system that has access to AWS. You can access and use Step Functions using the console, the AWS SDKs, or an HTTP API. For more information about Step Functions, see the  AWS Step Functions Developer Guide .
*/
public struct SFN: AWSService {

    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig
    public let context: AWSServiceContext

    // MARK: Initialization

    /// Initialize the SFN client
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
            amzTarget: "AWSStepFunctions",
            service: "states",
            serviceProtocol: .json(version: "1.0"),
            apiVersion: "2016-11-23",
            endpoint: endpoint,
            possibleErrorTypes: [SFNErrorType.self]        )
        self.context = .init(timeout: timeout ?? .seconds(20))
    }

    /// create copy of service with new context
    public func withNewContext(_ process: (AWSServiceContext) -> AWSServiceContext) -> Self {
        return Self(client: self.client, config: self.config, context: process(self.context))
    }

    // MARK: API Calls

    ///  Creates an activity. An activity is a task that you write in any programming language and host on any machine that has access to AWS Step Functions. Activities must poll Step Functions using the GetActivityTask API action and respond using SendTask* API actions. This function lets Step Functions know the existence of your activity and returns an identifier for use in a state machine and when polling from the activity.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.    CreateActivity is an idempotent API. Subsequent requests won’t create a duplicate resource if it was already created. CreateActivity's idempotency check is based on the activity name. If a following request has different tags values, Step Functions will ignore these differences and treat it as an idempotent request of the previous. In this case, tags will not be updated, even if they are different. 
    public func createActivity(_ input: CreateActivityInput) -> EventLoopFuture<CreateActivityOutput> {
        return client.execute(operation: "CreateActivity", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Creates a state machine. A state machine consists of a collection of states that can do work (Task states), determine to which states to transition next (Choice states), stop an execution with an error (Fail states), and so on. State machines are specified using a JSON-based, structured language. For more information, see Amazon States Language in the AWS Step Functions User Guide.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.    CreateStateMachine is an idempotent API. Subsequent requests won’t create a duplicate resource if it was already created. CreateStateMachine's idempotency check is based on the state machine name, definition, type, and LoggingConfiguration. If a following request has a different roleArn or tags, Step Functions will ignore these differences and treat it as an idempotent request of the previous. In this case, roleArn and tags will not be updated, even if they are different. 
    public func createStateMachine(_ input: CreateStateMachineInput) -> EventLoopFuture<CreateStateMachineOutput> {
        return client.execute(operation: "CreateStateMachine", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deletes an activity.
    public func deleteActivity(_ input: DeleteActivityInput) -> EventLoopFuture<DeleteActivityOutput> {
        return client.execute(operation: "DeleteActivity", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Deletes a state machine. This is an asynchronous operation: It sets the state machine's status to DELETING and begins the deletion process.   For EXPRESSstate machines, the deletion will happen eventually (usually less than a minute). Running executions may emit logs after DeleteStateMachine API is called. 
    public func deleteStateMachine(_ input: DeleteStateMachineInput) -> EventLoopFuture<DeleteStateMachineOutput> {
        return client.execute(operation: "DeleteStateMachine", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Describes an activity.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes. 
    public func describeActivity(_ input: DescribeActivityInput) -> EventLoopFuture<DescribeActivityOutput> {
        return client.execute(operation: "DescribeActivity", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Describes an execution.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.  This API action is not supported by EXPRESS state machines.
    public func describeExecution(_ input: DescribeExecutionInput) -> EventLoopFuture<DescribeExecutionOutput> {
        return client.execute(operation: "DescribeExecution", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Describes a state machine.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes. 
    public func describeStateMachine(_ input: DescribeStateMachineInput) -> EventLoopFuture<DescribeStateMachineOutput> {
        return client.execute(operation: "DescribeStateMachine", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Describes the state machine associated with a specific execution.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.  This API action is not supported by EXPRESS state machines.
    public func describeStateMachineForExecution(_ input: DescribeStateMachineForExecutionInput) -> EventLoopFuture<DescribeStateMachineForExecutionOutput> {
        return client.execute(operation: "DescribeStateMachineForExecution", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Used by workers to retrieve a task (with the specified activity ARN) which has been scheduled for execution by a running state machine. This initiates a long poll, where the service holds the HTTP connection open and responds as soon as a task becomes available (i.e. an execution of a task of this type is needed.) The maximum time the service holds on to the request before responding is 60 seconds. If no task is available within 60 seconds, the poll returns a taskToken with a null string.  Workers should set their client side socket timeout to at least 65 seconds (5 seconds higher than the maximum time the service may hold the poll request). Polling with GetActivityTask can cause latency in some implementations. See Avoid Latency When Polling for Activity Tasks in the Step Functions Developer Guide. 
    public func getActivityTask(_ input: GetActivityTaskInput) -> EventLoopFuture<GetActivityTaskOutput> {
        return client.execute(operation: "GetActivityTask", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Returns the history of the specified execution as a list of events. By default, the results are returned in ascending order of the timeStamp of the events. Use the reverseOrder parameter to get the latest events first. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error. This API action is not supported by EXPRESS state machines.
    public func getExecutionHistory(_ input: GetExecutionHistoryInput) -> EventLoopFuture<GetExecutionHistoryOutput> {
        return client.execute(operation: "GetExecutionHistory", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Lists the existing activities. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes. 
    public func listActivities(_ input: ListActivitiesInput) -> EventLoopFuture<ListActivitiesOutput> {
        return client.execute(operation: "ListActivities", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Lists the executions of a state machine that meet the filtering criteria. Results are sorted by time, with the most recent execution first. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.  This API action is not supported by EXPRESS state machines.
    public func listExecutions(_ input: ListExecutionsInput) -> EventLoopFuture<ListExecutionsOutput> {
        return client.execute(operation: "ListExecutions", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Lists the existing state machines. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes. 
    public func listStateMachines(_ input: ListStateMachinesInput) -> EventLoopFuture<ListStateMachinesOutput> {
        return client.execute(operation: "ListStateMachines", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  List tags for a given resource. Tags may only contain Unicode letters, digits, white space, or these symbols: _ . : / = + - @.
    public func listTagsForResource(_ input: ListTagsForResourceInput) -> EventLoopFuture<ListTagsForResourceOutput> {
        return client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Used by activity workers and task states using the callback pattern to report that the task identified by the taskToken failed.
    public func sendTaskFailure(_ input: SendTaskFailureInput) -> EventLoopFuture<SendTaskFailureOutput> {
        return client.execute(operation: "SendTaskFailure", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Used by activity workers and task states using the callback pattern to report to Step Functions that the task represented by the specified taskToken is still making progress. This action resets the Heartbeat clock. The Heartbeat threshold is specified in the state machine's Amazon States Language definition (HeartbeatSeconds). This action does not in itself create an event in the execution history. However, if the task times out, the execution history contains an ActivityTimedOut entry for activities, or a TaskTimedOut entry for for tasks using the job run or callback pattern.  The Timeout of a task, defined in the state machine's Amazon States Language definition, is its maximum allowed duration, regardless of the number of SendTaskHeartbeat requests received. Use HeartbeatSeconds to configure the timeout interval for heartbeats. 
    public func sendTaskHeartbeat(_ input: SendTaskHeartbeatInput) -> EventLoopFuture<SendTaskHeartbeatOutput> {
        return client.execute(operation: "SendTaskHeartbeat", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Used by activity workers and task states using the callback pattern to report that the task identified by the taskToken completed successfully.
    public func sendTaskSuccess(_ input: SendTaskSuccessInput) -> EventLoopFuture<SendTaskSuccessOutput> {
        return client.execute(operation: "SendTaskSuccess", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Starts a state machine execution.   StartExecution is idempotent. If StartExecution is called with the same name and input as a running execution, the call will succeed and return the same response as the original request. If the execution is closed or if the input is different, it will return a 400 ExecutionAlreadyExists error. Names can be reused after 90 days.  
    public func startExecution(_ input: StartExecutionInput) -> EventLoopFuture<StartExecutionOutput> {
        return client.execute(operation: "StartExecution", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Stops an execution. This API action is not supported by EXPRESS state machines.
    public func stopExecution(_ input: StopExecutionInput) -> EventLoopFuture<StopExecutionOutput> {
        return client.execute(operation: "StopExecution", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Add a tag to a Step Functions resource. An array of key-value pairs. For more information, see Using Cost Allocation Tags in the AWS Billing and Cost Management User Guide, and Controlling Access Using IAM Tags. Tags may only contain Unicode letters, digits, white space, or these symbols: _ . : / = + - @.
    public func tagResource(_ input: TagResourceInput) -> EventLoopFuture<TagResourceOutput> {
        return client.execute(operation: "TagResource", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Remove a tag from a Step Functions resource
    public func untagResource(_ input: UntagResourceInput) -> EventLoopFuture<UntagResourceOutput> {
        return client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }

    ///  Updates an existing state machine by modifying its definition, roleArn, or loggingConfiguration. Running executions will continue to use the previous definition and roleArn. You must include at least one of definition or roleArn or you will receive a MissingRequiredParameter error.  All StartExecution calls within a few seconds will use the updated definition and roleArn. Executions started immediately after calling UpdateStateMachine may use the previous state machine definition and roleArn.  
    public func updateStateMachine(_ input: UpdateStateMachineInput) -> EventLoopFuture<UpdateStateMachineOutput> {
        return client.execute(operation: "UpdateStateMachine", path: "/", httpMethod: .POST, input: input, config: self.config, context: self.context)
    }
}

extension SFN {
    /// internal initialiser used by `withNewContext`
    init(client: AWSClient, config: AWSServiceConfig, context: AWSServiceContext) {
        self.client = client
        self.config = config
        self.context = context
    }
}
