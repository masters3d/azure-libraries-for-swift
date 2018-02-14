// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Outputs is the stream Analytics Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Outputs {
    public static func CreateOrReplace(subscriptionId: String, resourceGroupName: String, jobName: String, outputName: String, output: OutputProtocol) -> OutputsCreateOrReplace {
        return CreateOrReplaceCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, jobName: jobName, outputName: outputName, output: output)
    }
    public static func Delete(subscriptionId: String, resourceGroupName: String, jobName: String, outputName: String) -> OutputsDelete {
        return DeleteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, jobName: jobName, outputName: outputName)
    }
    public static func Get(subscriptionId: String, resourceGroupName: String, jobName: String, outputName: String) -> OutputsGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, jobName: jobName, outputName: outputName)
    }
    public static func ListByStreamingJob(subscriptionId: String, resourceGroupName: String, jobName: String) -> OutputsListByStreamingJob {
        return ListByStreamingJobCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, jobName: jobName)
    }
    public static func Test(subscriptionId: String, resourceGroupName: String, jobName: String, outputName: String) -> OutputsTest {
        return TestCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, jobName: jobName, outputName: outputName)
    }
    public static func Update(subscriptionId: String, resourceGroupName: String, jobName: String, outputName: String, output: OutputProtocol) -> OutputsUpdate {
        return UpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, jobName: jobName, outputName: outputName, output: output)
    }
}
}
