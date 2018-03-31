// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// WnsCredentialPropertiesProtocol is description of a NotificationHub WnsCredential.
public protocol WnsCredentialPropertiesProtocol : Codable {
     var packageSid: String? { get set }
     var secretKey: String? { get set }
     var windowsLiveEndpoint: String? { get set }
}
