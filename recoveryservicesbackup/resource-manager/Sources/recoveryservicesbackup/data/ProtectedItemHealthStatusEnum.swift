// ProtectedItemHealthStatus enumerates the values for protected item health status.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum ProtectedItemHealthStatusEnum: String, Codable
{
// ProtectedItemHealthStatusHealthy specifies the protected item health status healthy state for protected item health
// status.
    case ProtectedItemHealthStatusHealthy = "Healthy"
// ProtectedItemHealthStatusInvalid specifies the protected item health status invalid state for protected item health
// status.
    case ProtectedItemHealthStatusInvalid = "Invalid"
// ProtectedItemHealthStatusIRPending specifies the protected item health status ir pending state for protected item
// health status.
    case ProtectedItemHealthStatusIRPending = "IRPending"
// ProtectedItemHealthStatusNotReachable specifies the protected item health status not reachable state for protected
// item health status.
    case ProtectedItemHealthStatusNotReachable = "NotReachable"
// ProtectedItemHealthStatusUnhealthy specifies the protected item health status unhealthy state for protected item
// health status.
    case ProtectedItemHealthStatusUnhealthy = "Unhealthy"
}