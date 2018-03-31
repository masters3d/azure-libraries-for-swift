// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// CloudErrorBodyProtocol is an error response from the ManagedServiceIdentity service.
public protocol CloudErrorBodyProtocol : Codable {
     var code: String? { get set }
     var message: String? { get set }
     var target: String? { get set }
     var details: [CloudErrorBodyProtocol?]? { get set }
}
