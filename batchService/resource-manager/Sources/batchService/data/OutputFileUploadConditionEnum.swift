// OutputFileUploadCondition enumerates the values for output file upload condition.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum OutputFileUploadConditionEnum: String, Codable {
// OutputFileUploadConditionTaskCompletion specifies the output file upload condition task completion state for output
// file upload condition.
    case OutputFileUploadConditionTaskCompletion = "taskcompletion"
// OutputFileUploadConditionTaskFailure specifies the output file upload condition task failure state for output file
// upload condition.
    case OutputFileUploadConditionTaskFailure = "taskfailure"
// OutputFileUploadConditionTaskSuccess specifies the output file upload condition task success state for output file
// upload condition.
    case OutputFileUploadConditionTaskSuccess = "tasksuccess"
}
