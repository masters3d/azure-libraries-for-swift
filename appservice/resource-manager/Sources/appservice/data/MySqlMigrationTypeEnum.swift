// MySqlMigrationType enumerates the values for my sql migration type.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum MySqlMigrationTypeEnum: String, Codable
{
// LocalToRemote specifies the local to remote state for my sql migration type.
    case LocalToRemote = "LocalToRemote"
// RemoteToLocal specifies the remote to local state for my sql migration type.
    case RemoteToLocal = "RemoteToLocal"
}
