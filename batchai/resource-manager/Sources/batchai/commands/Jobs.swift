// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Jobs is the the Azure BatchAI Management API.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Jobs {
    public static func Create(resourceGroupName: String, jobName: String, subscriptionId: String, parameters: JobCreateParametersProtocol) -> JobsCreate {
        return CreateCommand(resourceGroupName: resourceGroupName, jobName: jobName, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func Delete(resourceGroupName: String, jobName: String, subscriptionId: String) -> JobsDelete {
        return DeleteCommand(resourceGroupName: resourceGroupName, jobName: jobName, subscriptionId: subscriptionId)
    }
    public static func Get(resourceGroupName: String, jobName: String, subscriptionId: String) -> JobsGet {
        return GetCommand(resourceGroupName: resourceGroupName, jobName: jobName, subscriptionId: subscriptionId)
    }
    public static func List(subscriptionId: String) -> JobsList {
        return ListCommand(subscriptionId: subscriptionId)
    }
    public static func ListByResourceGroup(resourceGroupName: String, subscriptionId: String) -> JobsListByResourceGroup {
        return ListByResourceGroupCommand(resourceGroupName: resourceGroupName, subscriptionId: subscriptionId)
    }
    public static func ListOutputFiles(resourceGroupName: String, jobName: String, subscriptionId: String, outputdirectoryid: String) -> JobsListOutputFiles {
        return ListOutputFilesCommand(resourceGroupName: resourceGroupName, jobName: jobName, subscriptionId: subscriptionId, outputdirectoryid: outputdirectoryid)
    }
    public static func ListRemoteLoginInformation(resourceGroupName: String, jobName: String, subscriptionId: String) -> JobsListRemoteLoginInformation {
        return ListRemoteLoginInformationCommand(resourceGroupName: resourceGroupName, jobName: jobName, subscriptionId: subscriptionId)
    }
    public static func Terminate(resourceGroupName: String, jobName: String, subscriptionId: String) -> JobsTerminate {
        return TerminateCommand(resourceGroupName: resourceGroupName, jobName: jobName, subscriptionId: subscriptionId)
    }
}
}
