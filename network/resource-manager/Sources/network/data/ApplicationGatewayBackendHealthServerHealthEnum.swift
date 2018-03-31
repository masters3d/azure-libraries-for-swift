// ApplicationGatewayBackendHealthServerHealth enumerates the values for application gateway backend health server
// health.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum ApplicationGatewayBackendHealthServerHealthEnum: String, Codable
{
// Down specifies the down state for application gateway backend health server health.
    case Down = "Down"
// Draining specifies the draining state for application gateway backend health server health.
    case Draining = "Draining"
// Partial specifies the partial state for application gateway backend health server health.
    case Partial = "Partial"
// Unknown specifies the unknown state for application gateway backend health server health.
    case Unknown = "Unknown"
// Up specifies the up state for application gateway backend health server health.
    case Up = "Up"
}
