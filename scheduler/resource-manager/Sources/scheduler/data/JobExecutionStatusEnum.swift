// JobExecutionStatus enumerates the values for job execution status.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum JobExecutionStatusEnum: String, Codable
{
// Completed specifies the completed state for job execution status.
    case Completed = "Completed"
// Failed specifies the failed state for job execution status.
    case Failed = "Failed"
// Postponed specifies the postponed state for job execution status.
    case Postponed = "Postponed"
}
