// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
Amazon Comprehend is an AWS service for gaining insight into the content of documents. Use these actions to determine the topics contained in your documents, the topics they discuss, the predominant sentiment expressed in them, the predominant language used, and more.
*/
public struct Comprehend {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "Comprehend_20171127",
            service: "comprehend",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-11-27",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [ComprehendError.self]
        )
    }

    ///  Inspects the text of a batch of documents for the syntax and part of speech of the words in the document and returns information about them. For more information, see how-syntax.
    public func batchDetectSyntax(_ input: BatchDetectSyntaxRequest) throws -> BatchDetectSyntaxResponse {
        return try client.send(operation: "BatchDetectSyntax", path: "/", httpMethod: "POST", input: input)
    }

    ///  Determines the dominant language of the input text. For a list of languages that Amazon Comprehend can detect, see Amazon Comprehend Supported Languages. 
    public func detectDominantLanguage(_ input: DetectDominantLanguageRequest) throws -> DetectDominantLanguageResponse {
        return try client.send(operation: "DetectDominantLanguage", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the properties associated with a sentiment detection job. Use this operation to get the status of a detection job.
    public func describeSentimentDetectionJob(_ input: DescribeSentimentDetectionJobRequest) throws -> DescribeSentimentDetectionJobResponse {
        return try client.send(operation: "DescribeSentimentDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of the entity detection jobs that you have submitted.
    public func listEntitiesDetectionJobs(_ input: ListEntitiesDetectionJobsRequest) throws -> ListEntitiesDetectionJobsResponse {
        return try client.send(operation: "ListEntitiesDetectionJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Inspects a batch of documents and returns an inference of the prevailing sentiment, POSITIVE, NEUTRAL, MIXED, or NEGATIVE, in each one.
    public func batchDetectSentiment(_ input: BatchDetectSentimentRequest) throws -> BatchDetectSentimentResponse {
        return try client.send(operation: "BatchDetectSentiment", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops an entities detection job in progress. If the job state is IN_PROGRESS the job is marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state; otherwise the job is stopped and put into the STOPPED state. If the job is in the COMPLETED or FAILED state when you call the StopDominantLanguageDetectionJob operation, the operation returns a 400 Internal Request Exception.  When a job is stopped, any documents already processed are written to the output location.
    public func stopEntitiesDetectionJob(_ input: StopEntitiesDetectionJobRequest) throws -> StopEntitiesDetectionJobResponse {
        return try client.send(operation: "StopEntitiesDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts an asynchronous entity detection job for a collection of documents. Use the operation to track the status of a job.
    public func startEntitiesDetectionJob(_ input: StartEntitiesDetectionJobRequest) throws -> StartEntitiesDetectionJobResponse {
        return try client.send(operation: "StartEntitiesDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Inspects text and returns an inference of the prevailing sentiment (POSITIVE, NEUTRAL, MIXED, or NEGATIVE). 
    public func detectSentiment(_ input: DetectSentimentRequest) throws -> DetectSentimentResponse {
        return try client.send(operation: "DetectSentiment", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops a sentiment detection job in progress. If the job state is IN_PROGRESS the job is marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state; otherwise the job is be stopped and put into the STOPPED state. If the job is in the COMPLETED or FAILED state when you call the StopDominantLanguageDetectionJob operation, the operation returns a 400 Internal Request Exception.  When a job is stopped, any documents already processed are written to the output location.
    public func stopSentimentDetectionJob(_ input: StopSentimentDetectionJobRequest) throws -> StopSentimentDetectionJobResponse {
        return try client.send(operation: "StopSentimentDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Determines the dominant language of the input text for a batch of documents. For a list of languages that Amazon Comprehend can detect, see Amazon Comprehend Supported Languages. 
    public func batchDetectDominantLanguage(_ input: BatchDetectDominantLanguageRequest) throws -> BatchDetectDominantLanguageResponse {
        return try client.send(operation: "BatchDetectDominantLanguage", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts an asynchronous topic detection job. Use the DescribeTopicDetectionJob operation to track the status of a job.
    public func startTopicsDetectionJob(_ input: StartTopicsDetectionJobRequest) throws -> StartTopicsDetectionJobResponse {
        return try client.send(operation: "StartTopicsDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the properties associated with a dominant language detection job. Use this operation to get the status of a detection job.
    public func describeDominantLanguageDetectionJob(_ input: DescribeDominantLanguageDetectionJobRequest) throws -> DescribeDominantLanguageDetectionJobResponse {
        return try client.send(operation: "DescribeDominantLanguageDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops a key phrases detection job in progress. If the job state is IN_PROGRESS the job is marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state; otherwise the job is stopped and put into the STOPPED state. If the job is in the COMPLETED or FAILED state when you call the StopDominantLanguageDetectionJob operation, the operation returns a 400 Internal Request Exception.  When a job is stopped, any documents already processed are written to the output location.
    public func stopKeyPhrasesDetectionJob(_ input: StopKeyPhrasesDetectionJobRequest) throws -> StopKeyPhrasesDetectionJobResponse {
        return try client.send(operation: "StopKeyPhrasesDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts an asynchronous key phrase detection job for a collection of documents. Use the operation to track the status of a job.
    public func startKeyPhrasesDetectionJob(_ input: StartKeyPhrasesDetectionJobRequest) throws -> StartKeyPhrasesDetectionJobResponse {
        return try client.send(operation: "StartKeyPhrasesDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Detects the key noun phrases found in the text. 
    public func detectKeyPhrases(_ input: DetectKeyPhrasesRequest) throws -> DetectKeyPhrasesResponse {
        return try client.send(operation: "DetectKeyPhrases", path: "/", httpMethod: "POST", input: input)
    }

    ///  Detects the key noun phrases found in a batch of documents.
    public func batchDetectKeyPhrases(_ input: BatchDetectKeyPhrasesRequest) throws -> BatchDetectKeyPhrasesResponse {
        return try client.send(operation: "BatchDetectKeyPhrases", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the properties associated with a topic detection job. Use this operation to get the status of a detection job.
    public func describeTopicsDetectionJob(_ input: DescribeTopicsDetectionJobRequest) throws -> DescribeTopicsDetectionJobResponse {
        return try client.send(operation: "DescribeTopicsDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the properties associated with an entities detection job. Use this operation to get the status of a detection job.
    public func describeEntitiesDetectionJob(_ input: DescribeEntitiesDetectionJobRequest) throws -> DescribeEntitiesDetectionJobResponse {
        return try client.send(operation: "DescribeEntitiesDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Get a list of key phrase detection jobs that you have submitted.
    public func listKeyPhrasesDetectionJobs(_ input: ListKeyPhrasesDetectionJobsRequest) throws -> ListKeyPhrasesDetectionJobsResponse {
        return try client.send(operation: "ListKeyPhrasesDetectionJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts an asynchronous sentiment detection job for a collection of documents. use the operation to track the status of a job.
    public func startSentimentDetectionJob(_ input: StartSentimentDetectionJobRequest) throws -> StartSentimentDetectionJobResponse {
        return try client.send(operation: "StartSentimentDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Inspects the text of a batch of documents for named entities and returns information about them. For more information about named entities, see how-entities 
    public func batchDetectEntities(_ input: BatchDetectEntitiesRequest) throws -> BatchDetectEntitiesResponse {
        return try client.send(operation: "BatchDetectEntities", path: "/", httpMethod: "POST", input: input)
    }

    ///  Inspects text for syntax and the part of speech of words in the document. For more information, how-syntax.
    public func detectSyntax(_ input: DetectSyntaxRequest) throws -> DetectSyntaxResponse {
        return try client.send(operation: "DetectSyntax", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the properties associated with a key phrases detection job. Use this operation to get the status of a detection job.
    public func describeKeyPhrasesDetectionJob(_ input: DescribeKeyPhrasesDetectionJobRequest) throws -> DescribeKeyPhrasesDetectionJobResponse {
        return try client.send(operation: "DescribeKeyPhrasesDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of the dominant language detection jobs that you have submitted.
    public func listDominantLanguageDetectionJobs(_ input: ListDominantLanguageDetectionJobsRequest) throws -> ListDominantLanguageDetectionJobsResponse {
        return try client.send(operation: "ListDominantLanguageDetectionJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of sentiment detection jobs that you have submitted.
    public func listSentimentDetectionJobs(_ input: ListSentimentDetectionJobsRequest) throws -> ListSentimentDetectionJobsResponse {
        return try client.send(operation: "ListSentimentDetectionJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of the topic detection jobs that you have submitted.
    public func listTopicsDetectionJobs(_ input: ListTopicsDetectionJobsRequest) throws -> ListTopicsDetectionJobsResponse {
        return try client.send(operation: "ListTopicsDetectionJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts an asynchronous dominant language detection job for a collection of documents. Use the operation to track the status of a job.
    public func startDominantLanguageDetectionJob(_ input: StartDominantLanguageDetectionJobRequest) throws -> StartDominantLanguageDetectionJobResponse {
        return try client.send(operation: "StartDominantLanguageDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops a dominant language detection job in progress. If the job state is IN_PROGRESS the job is marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state; otherwise the job is stopped and put into the STOPPED state. If the job is in the COMPLETED or FAILED state when you call the StopDominantLanguageDetectionJob operation, the operation returns a 400 Internal Request Exception.  When a job is stopped, any documents already processed are written to the output location.
    public func stopDominantLanguageDetectionJob(_ input: StopDominantLanguageDetectionJobRequest) throws -> StopDominantLanguageDetectionJobResponse {
        return try client.send(operation: "StopDominantLanguageDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Inspects text for named entities, and returns information about them. For more information, about named entities, see how-entities. 
    public func detectEntities(_ input: DetectEntitiesRequest) throws -> DetectEntitiesResponse {
        return try client.send(operation: "DetectEntities", path: "/", httpMethod: "POST", input: input)
    }


}