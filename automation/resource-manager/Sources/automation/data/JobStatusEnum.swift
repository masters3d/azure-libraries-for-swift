// JobStatus enumerates the values for job status.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum JobStatusEnum: String, Codable
{
// JobStatusActivating specifies the job status activating state for job status.
    case JobStatusActivating = "Activating"
// JobStatusBlocked specifies the job status blocked state for job status.
    case JobStatusBlocked = "Blocked"
// JobStatusCompleted specifies the job status completed state for job status.
    case JobStatusCompleted = "Completed"
// JobStatusDisconnected specifies the job status disconnected state for job status.
    case JobStatusDisconnected = "Disconnected"
// JobStatusFailed specifies the job status failed state for job status.
    case JobStatusFailed = "Failed"
// JobStatusNew specifies the job status new state for job status.
    case JobStatusNew = "New"
// JobStatusRemoving specifies the job status removing state for job status.
    case JobStatusRemoving = "Removing"
// JobStatusResuming specifies the job status resuming state for job status.
    case JobStatusResuming = "Resuming"
// JobStatusRunning specifies the job status running state for job status.
    case JobStatusRunning = "Running"
// JobStatusStopped specifies the job status stopped state for job status.
    case JobStatusStopped = "Stopped"
// JobStatusStopping specifies the job status stopping state for job status.
    case JobStatusStopping = "Stopping"
// JobStatusSuspended specifies the job status suspended state for job status.
    case JobStatusSuspended = "Suspended"
// JobStatusSuspending specifies the job status suspending state for job status.
    case JobStatusSuspending = "Suspending"
}
