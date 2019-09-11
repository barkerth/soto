// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Amazon QuickSight API Reference Amazon QuickSight is a fully managed, serverless, cloud business intelligence service that makes it easy to extend data and insights to every user in your organization. This API interface reference contains documentation for a programming interface that you can use to manage Amazon QuickSight. 
*/
public struct QuickSight {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "quicksight",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 0)),
            apiVersion: "2018-04-01",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [QuickSightErrorType.self]
        )
    }

    ///  Creates an Amazon QuickSight group. The permissions resource is arn:aws:quicksight:us-east-1:&lt;relevant-aws-account-id&gt;:group/default/&lt;group-name&gt; . The response is a group object.  CLI Sample:   aws quicksight create-group --aws-account-id=111122223333 --namespace=default --group-name="Sales-Management" --description="Sales Management - Forecasting"  
    public func createGroup(_ input: CreateGroupRequest) throws -> Future<CreateGroupResponse> {
        return try client.send(operation: "CreateGroup", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups", httpMethod: "POST", input: input)
    }

    ///  Adds an Amazon QuickSight user to an Amazon QuickSight group.  The permissions resource is arn:aws:quicksight:us-east-1:&lt;aws-account-id&gt;:group/default/&lt;group-name&gt; . The condition resource is the user name. The condition key is quicksight:UserName. The response is the group member object.  CLI Sample:   aws quicksight create-group-membership --aws-account-id=111122223333 --namespace=default --group-name=Sales --member-name=Pat  
    public func createGroupMembership(_ input: CreateGroupMembershipRequest) throws -> Future<CreateGroupMembershipResponse> {
        return try client.send(operation: "CreateGroupMembership", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members/{MemberName}", httpMethod: "PUT", input: input)
    }

    ///  Removes a user group from Amazon QuickSight.  The permissions resource is arn:aws:quicksight:us-east-1:&lt;aws-account-id&gt;:group/default/&lt;group-name&gt; .  CLI Sample:   aws quicksight delete-group -\-aws-account-id=111122223333 -\-namespace=default -\-group-name=Sales-Management  
    public func deleteGroup(_ input: DeleteGroupRequest) throws -> Future<DeleteGroupResponse> {
        return try client.send(operation: "DeleteGroup", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}", httpMethod: "DELETE", input: input)
    }

    ///  Removes a user from a group so that the user is no longer a member of the group. The permissions resource is arn:aws:quicksight:us-east-1:&lt;aws-account-id&gt;:group/default/&lt;group-name&gt; . The condition resource is the user name. The condition key is quicksight:UserName.  CLI Sample:   aws quicksight delete-group-membership --aws-account-id=111122223333 --namespace=default --group-name=Sales-Management --member-name=Charlie  
    public func deleteGroupMembership(_ input: DeleteGroupMembershipRequest) throws -> Future<DeleteGroupMembershipResponse> {
        return try client.send(operation: "DeleteGroupMembership", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members/{MemberName}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the Amazon QuickSight user that is associated with the identity of the AWS Identity and Access Management (IAM) user or role that's making the call. The IAM user isn't deleted as a result of this call.  The permission resource is arn:aws:quicksight:us-east-1:&lt;aws-account-id&gt;:user/default/&lt;user-name&gt;  .  CLI Sample:   aws quicksight delete-user --aws-account-id=111122223333 --namespace=default --user-name=Pat  
    public func deleteUser(_ input: DeleteUserRequest) throws -> Future<DeleteUserResponse> {
        return try client.send(operation: "DeleteUser", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a user after locating the user by its principal ID.
    public func deleteUserByPrincipalId(_ input: DeleteUserByPrincipalIdRequest) throws -> Future<DeleteUserByPrincipalIdResponse> {
        return try client.send(operation: "DeleteUserByPrincipalId", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/user-principals/{PrincipalId}", httpMethod: "DELETE", input: input)
    }

    ///  Returns an Amazon QuickSight group's description and Amazon Resource Name (ARN).  The permissions resource is arn:aws:quicksight:us-east-1:&lt;relevant-aws-account-id&gt;:group/default/&lt;group-name&gt; . The response is the group object.   CLI Sample:   aws quicksight describe-group -\-aws-account-id=11112222333 -\-namespace=default -\-group-name=Sales  
    public func describeGroup(_ input: DescribeGroupRequest) throws -> Future<DescribeGroupResponse> {
        return try client.send(operation: "DescribeGroup", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}", httpMethod: "GET", input: input)
    }

    ///  Returns information about a user, given the user name.  The permission resource is arn:aws:quicksight:us-east-1:&lt;aws-account-id&gt;:user/default/&lt;user-name&gt; .  The response is a user object that contains the user's Amazon Resource Name (ARN), AWS Identity and Access Management (IAM) role, and email address.   CLI Sample:   aws quicksight describe-user --aws-account-id=111122223333 --namespace=default --user-name=Pat  
    public func describeUser(_ input: DescribeUserRequest) throws -> Future<DescribeUserResponse> {
        return try client.send(operation: "DescribeUser", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}", httpMethod: "GET", input: input)
    }

    ///  Generates a server-side embeddable URL and authorization code. Before this can work properly, first you need to configure the dashboards and user permissions. For more information, see  Embedding Amazon QuickSight Dashboards. Currently, you can use GetDashboardEmbedURL only from the server, not from the user’s browser.  CLI Sample:  Assume the role with permissions enabled for actions: quickSight:RegisterUser and quicksight:GetDashboardEmbedURL. You can use assume-role, assume-role-with-web-identity, or assume-role-with-saml.   aws sts assume-role --role-arn "arn:aws:iam::111122223333:role/embedding_quicksight_dashboard_role" --role-session-name embeddingsession  If the user does not exist in QuickSight, register the user:  aws quicksight register-user --aws-account-id 111122223333 --namespace default --identity-type IAM --iam-arn "arn:aws:iam::111122223333:role/embedding_quicksight_dashboard_role" --user-role READER --session-name "embeddingsession" --email user123@example.com --region us-east-1  Get the URL for the embedded dashboard  aws quicksight get-dashboard-embed-url --aws-account-id 111122223333 --dashboard-id 1a1ac2b2-3fc3-4b44-5e5d-c6db6778df89 --identity-type IAM 
    public func getDashboardEmbedUrl(_ input: GetDashboardEmbedUrlRequest) throws -> Future<GetDashboardEmbedUrlResponse> {
        return try client.send(operation: "GetDashboardEmbedUrl", path: "/accounts/{AwsAccountId}/dashboards/{DashboardId}/embed-url", httpMethod: "GET", input: input)
    }

    ///  Lists member users in a group. The permissions resource is arn:aws:quicksight:us-east-1:&lt;aws-account-id&gt;:group/default/&lt;group-name&gt; . The response is a list of group member objects.  CLI Sample:   aws quicksight list-group-memberships -\-aws-account-id=111122223333 -\-namespace=default  
    public func listGroupMemberships(_ input: ListGroupMembershipsRequest) throws -> Future<ListGroupMembershipsResponse> {
        return try client.send(operation: "ListGroupMemberships", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members", httpMethod: "GET", input: input)
    }

    ///  Lists all user groups in Amazon QuickSight.  The permissions resource is arn:aws:quicksight:us-east-1:&lt;aws-account-id&gt;:group/default/*. The response is a list of group objects.   CLI Sample:   aws quicksight list-groups -\-aws-account-id=111122223333 -\-namespace=default  
    public func listGroups(_ input: ListGroupsRequest) throws -> Future<ListGroupsResponse> {
        return try client.send(operation: "ListGroups", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups", httpMethod: "GET", input: input)
    }

    ///  Lists the Amazon QuickSight groups that an Amazon QuickSight user is a member of. The permission resource is arn:aws:quicksight:us-east-1:&lt;aws-account-id&gt;:user/default/&lt;user-name&gt; .  The response is a one or more group objects.   CLI Sample:   aws quicksight list-user-groups -\-user-name=Pat -\-aws-account-id=111122223333 -\-namespace=default -\-region=us-east-1  
    public func listUserGroups(_ input: ListUserGroupsRequest) throws -> Future<ListUserGroupsResponse> {
        return try client.send(operation: "ListUserGroups", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}/groups", httpMethod: "GET", input: input)
    }

    ///  Returns a list of all of the Amazon QuickSight users belonging to this account.  The permission resource is arn:aws:quicksight:us-east-1:&lt;aws-account-id&gt;:user/default/* . The response is a list of user objects, containing each user's Amazon Resource Name (ARN), AWS Identity and Access Management (IAM) role, and email address.   CLI Sample:   aws quicksight list-users --aws-account-id=111122223333 --namespace=default  
    public func listUsers(_ input: ListUsersRequest) throws -> Future<ListUsersResponse> {
        return try client.send(operation: "ListUsers", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/users", httpMethod: "GET", input: input)
    }

    ///  Creates an Amazon QuickSight user, whose identity is associated with the AWS Identity and Access Management (IAM) identity or role specified in the request.  The permission resource is arn:aws:quicksight:us-east-1:&lt;aws-account-id&gt;:user/default/&lt;user-name&gt; . The condition resource is the Amazon Resource Name (ARN) for the IAM user or role, and the session name.  The condition keys are quicksight:IamArn and quicksight:SessionName.   CLI Sample:   aws quicksight register-user -\-aws-account-id=111122223333 -\-namespace=default -\-email=pat@example.com -\-identity-type=IAM -\-user-role=AUTHOR -\-iam-arn=arn:aws:iam::111122223333:user/Pat  
    public func registerUser(_ input: RegisterUserRequest) throws -> Future<RegisterUserResponse> {
        return try client.send(operation: "RegisterUser", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/users", httpMethod: "POST", input: input)
    }

    ///  Changes a group description.  The permissions resource is arn:aws:quicksight:us-east-1:&lt;aws-account-id&gt;:group/default/&lt;group-name&gt; . The response is a group object.  CLI Sample:   aws quicksight update-group --aws-account-id=111122223333 --namespace=default --group-name=Sales --description="Sales BI Dashboards"  
    public func updateGroup(_ input: UpdateGroupRequest) throws -> Future<UpdateGroupResponse> {
        return try client.send(operation: "UpdateGroup", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}", httpMethod: "PUT", input: input)
    }

    ///  Updates an Amazon QuickSight user. The permission resource is arn:aws:quicksight:us-east-1:&lt;aws-account-id&gt;:user/default/&lt;user-name&gt; .  The response is a user object that contains the user's Amazon QuickSight user name, email address, active or inactive status in Amazon QuickSight, Amazon QuickSight role, and Amazon Resource Name (ARN).   CLI Sample:   aws quicksight update-user --user-name=Pat --role=ADMIN --email=new_address@amazon.com --aws-account-id=111122223333 --namespace=default --region=us-east-1  
    public func updateUser(_ input: UpdateUserRequest) throws -> Future<UpdateUserResponse> {
        return try client.send(operation: "UpdateUser", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}", httpMethod: "PUT", input: input)
    }
}
