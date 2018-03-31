// DefaultConsistencyLevel enumerates the values for default consistency level.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum DefaultConsistencyLevelEnum: String, Codable
{
// BoundedStaleness specifies the bounded staleness state for default consistency level.
    case BoundedStaleness = "BoundedStaleness"
// ConsistentPrefix specifies the consistent prefix state for default consistency level.
    case ConsistentPrefix = "ConsistentPrefix"
// Eventual specifies the eventual state for default consistency level.
    case Eventual = "Eventual"
// Session specifies the session state for default consistency level.
    case Session = "Session"
// Strong specifies the strong state for default consistency level.
    case Strong = "Strong"
}
