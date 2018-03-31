// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// PowerShellSessionResourcePropertiesProtocol is collection of properties.
public protocol PowerShellSessionResourcePropertiesProtocol : Codable {
     var sessionId: String? { get set }
     var state: String? { get set }
     var runspaceAvailability: String? { get set }
     var disconnectedOn: Date? { get set }
     var expiresOn: Date? { get set }
     var version: VersionProtocol? { get set }
     var name: String? { get set }
}
