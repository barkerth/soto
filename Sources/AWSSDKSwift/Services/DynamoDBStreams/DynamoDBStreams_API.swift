// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Amazon DynamoDB Amazon DynamoDB Streams provides API actions for accessing streams and processing stream records. To learn more about application development with Streams, see Capturing Table Activity with DynamoDB Streams in the Amazon DynamoDB Developer Guide.
*/
public struct DynamoDBStreams {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "DynamoDBStreams_20120810",
            service: "streams.dynamodb",
            signingName: "dynamodb",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 0)),
            apiVersion: "2012-08-10",
            endpoint: endpoint,
            serviceEndpoints: ["ca-central-1-fips": "dynamodb-fips.ca-central-1.amazonaws.com", "local": "localhost:8000", "us-east-1-fips": "dynamodb-fips.us-east-1.amazonaws.com", "us-east-2-fips": "dynamodb-fips.us-east-2.amazonaws.com", "us-west-1-fips": "dynamodb-fips.us-west-1.amazonaws.com", "us-west-2-fips": "dynamodb-fips.us-west-2.amazonaws.com"],
            middlewares: middlewares,
            possibleErrorTypes: [DynamoDBStreamsErrorType.self]
        )
    }

    ///  Returns information about a stream, including the current status of the stream, its Amazon Resource Name (ARN), the composition of its shards, and its corresponding DynamoDB table.  You can call DescribeStream at a maximum rate of 10 times per second.  Each shard in the stream has a SequenceNumberRange associated with it. If the SequenceNumberRange has a StartingSequenceNumber but no EndingSequenceNumber, then the shard is still open (able to receive more stream records). If both StartingSequenceNumber and EndingSequenceNumber are present, then that shard is closed and can no longer receive more data.
    public func describeStream(_ input: DescribeStreamInput) throws -> Future<DescribeStreamOutput> {
        return try client.send(operation: "DescribeStream", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the stream records from a given shard. Specify a shard iterator using the ShardIterator parameter. The shard iterator specifies the position in the shard from which you want to start reading stream records sequentially. If there are no stream records available in the portion of the shard that the iterator points to, GetRecords returns an empty list. Note that it might take multiple calls to get to a portion of the shard that contains stream records.   GetRecords can retrieve a maximum of 1 MB of data or 1000 stream records, whichever comes first. 
    public func getRecords(_ input: GetRecordsInput) throws -> Future<GetRecordsOutput> {
        return try client.send(operation: "GetRecords", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a shard iterator. A shard iterator provides information about how to retrieve the stream records from within a shard. Use the shard iterator in a subsequent GetRecords request to read the stream records from the shard.  A shard iterator expires 15 minutes after it is returned to the requester. 
    public func getShardIterator(_ input: GetShardIteratorInput) throws -> Future<GetShardIteratorOutput> {
        return try client.send(operation: "GetShardIterator", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns an array of stream ARNs associated with the current account and endpoint. If the TableName parameter is present, then ListStreams will return only the streams ARNs for that table.  You can call ListStreams at a maximum rate of 5 times per second. 
    public func listStreams(_ input: ListStreamsInput) throws -> Future<ListStreamsOutput> {
        return try client.send(operation: "ListStreams", path: "/", httpMethod: "POST", input: input)
    }
}
