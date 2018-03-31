// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// JobSchedule is the a client for issuing REST requests to the Azure Batch service.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct JobSchedule {
    public static func Add(cloudJobSchedule: JobScheduleAddParameterProtocol) -> JobScheduleAdd {
        return AddCommand(cloudJobSchedule: cloudJobSchedule)
    }
    public static func Delete(jobScheduleId: String) -> JobScheduleDelete {
        return DeleteCommand(jobScheduleId: jobScheduleId)
    }
    public static func Disable(jobScheduleId: String) -> JobScheduleDisable {
        return DisableCommand(jobScheduleId: jobScheduleId)
    }
    public static func Enable(jobScheduleId: String) -> JobScheduleEnable {
        return EnableCommand(jobScheduleId: jobScheduleId)
    }
    public static func Exists(jobScheduleId: String) -> JobScheduleExists {
        return ExistsCommand(jobScheduleId: jobScheduleId)
    }
    public static func Get(jobScheduleId: String) -> JobScheduleGet {
        return GetCommand(jobScheduleId: jobScheduleId)
    }
    public static func List() -> JobScheduleList {
        return ListCommand()
    }
    public static func Patch(jobScheduleId: String, jobSchedulePatchParameter: JobSchedulePatchParameterProtocol) -> JobSchedulePatch {
        return PatchCommand(jobScheduleId: jobScheduleId, jobSchedulePatchParameter: jobSchedulePatchParameter)
    }
    public static func Terminate(jobScheduleId: String) -> JobScheduleTerminate {
        return TerminateCommand(jobScheduleId: jobScheduleId)
    }
    public static func Update(jobScheduleId: String, jobScheduleUpdateParameter: JobScheduleUpdateParameterProtocol) -> JobScheduleUpdate {
        return UpdateCommand(jobScheduleId: jobScheduleId, jobScheduleUpdateParameter: jobScheduleUpdateParameter)
    }
}
}
