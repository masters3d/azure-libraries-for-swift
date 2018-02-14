// JobStatus enumerates the values for job status.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum JobStatusEnum: String, Codable
{
// Cancelled specifies the cancelled state for job status.
    case Cancelled = "cancelled"
// Completed specifies the completed state for job status.
    case Completed = "completed"
// Enqueued specifies the enqueued state for job status.
    case Enqueued = "enqueued"
// Failed specifies the failed state for job status.
    case Failed = "failed"
// Running specifies the running state for job status.
    case Running = "running"
// Unknown specifies the unknown state for job status.
    case Unknown = "unknown"
}