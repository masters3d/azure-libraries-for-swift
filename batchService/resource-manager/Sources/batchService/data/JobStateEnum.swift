// JobState enumerates the values for job state.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum JobStateEnum: String, Codable {
// JobStateActive specifies the job state active state for job state.
    case JobStateActive = "active"
// JobStateCompleted specifies the job state completed state for job state.
    case JobStateCompleted = "completed"
// JobStateDeleting specifies the job state deleting state for job state.
    case JobStateDeleting = "deleting"
// JobStateDisabled specifies the job state disabled state for job state.
    case JobStateDisabled = "disabled"
// JobStateDisabling specifies the job state disabling state for job state.
    case JobStateDisabling = "disabling"
// JobStateEnabling specifies the job state enabling state for job state.
    case JobStateEnabling = "enabling"
// JobStateTerminating specifies the job state terminating state for job state.
    case JobStateTerminating = "terminating"
}
