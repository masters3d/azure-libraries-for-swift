// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Inputs is the stream Analytics Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Inputs {
    public static func CreateOrReplace(subscriptionId: String, resourceGroupName: String, jobName: String, inputName: String, input: InputProtocol) -> InputsCreateOrReplace {
        return CreateOrReplaceCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, jobName: jobName, inputName: inputName, input: input)
    }
    public static func Delete(subscriptionId: String, resourceGroupName: String, jobName: String, inputName: String) -> InputsDelete {
        return DeleteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, jobName: jobName, inputName: inputName)
    }
    public static func Get(subscriptionId: String, resourceGroupName: String, jobName: String, inputName: String) -> InputsGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, jobName: jobName, inputName: inputName)
    }
    public static func ListByStreamingJob(subscriptionId: String, resourceGroupName: String, jobName: String) -> InputsListByStreamingJob {
        return ListByStreamingJobCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, jobName: jobName)
    }
    public static func Test(subscriptionId: String, resourceGroupName: String, jobName: String, inputName: String) -> InputsTest {
        return TestCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, jobName: jobName, inputName: inputName)
    }
    public static func Update(subscriptionId: String, resourceGroupName: String, jobName: String, inputName: String, input: InputProtocol) -> InputsUpdate {
        return UpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, jobName: jobName, inputName: inputName, input: input)
    }
}
}
