// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// EnvironmentSettingProtocol is a collection of environment variables to set.
public protocol EnvironmentSettingProtocol : Codable {
     var name: String { get set }
     var value: String? { get set }
}
