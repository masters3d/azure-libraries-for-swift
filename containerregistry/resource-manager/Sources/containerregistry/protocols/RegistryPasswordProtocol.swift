// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RegistryPasswordProtocol is the login password for the container registry.
public protocol RegistryPasswordProtocol : Codable {
     var name: PasswordNameEnum? { get set }
     var value: String? { get set }
}
