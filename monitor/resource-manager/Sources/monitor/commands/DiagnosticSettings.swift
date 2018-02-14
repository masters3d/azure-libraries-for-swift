// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// DiagnosticSettings is the monitor Management Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct DiagnosticSettings {
    public static func CreateOrUpdate(resourceUri: String, name: String, parameters: DiagnosticSettingsResourceProtocol) -> DiagnosticSettingsCreateOrUpdate {
        return CreateOrUpdateCommand(resourceUri: resourceUri, name: name, parameters: parameters)
    }
    public static func Delete(resourceUri: String, name: String) -> DiagnosticSettingsDelete {
        return DeleteCommand(resourceUri: resourceUri, name: name)
    }
    public static func Get(resourceUri: String, name: String) -> DiagnosticSettingsGet {
        return GetCommand(resourceUri: resourceUri, name: name)
    }
    public static func List(resourceUri: String) -> DiagnosticSettingsList {
        return ListCommand(resourceUri: resourceUri)
    }
}
}
