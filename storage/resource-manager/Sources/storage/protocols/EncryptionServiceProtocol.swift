// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// EncryptionServiceProtocol is a service that allows server-side encryption to be used.
public protocol EncryptionServiceProtocol : Codable {
     var enabled: Bool? { get set }
     var lastEnabledTime: Date? { get set }
}
