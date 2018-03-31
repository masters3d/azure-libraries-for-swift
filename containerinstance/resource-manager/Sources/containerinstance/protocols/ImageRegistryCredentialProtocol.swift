// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ImageRegistryCredentialProtocol is image registry credential.
public protocol ImageRegistryCredentialProtocol : Codable {
     var server: String { get set }
     var username: String { get set }
     var password: String? { get set }
}
