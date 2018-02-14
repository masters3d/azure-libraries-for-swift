// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SiteMachineKeyProtocol is machineKey of an app.
public protocol SiteMachineKeyProtocol : Codable {
     var validation: String? { get set }
     var validationKey: String? { get set }
     var decryption: String? { get set }
     var decryptionKey: String? { get set }
}
