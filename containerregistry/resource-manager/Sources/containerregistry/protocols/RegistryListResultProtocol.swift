// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RegistryListResultProtocol is the result of a request to list container registries.
public protocol RegistryListResultProtocol : Codable {
     var value: [RegistryProtocol?]? { get set }
     var _nextLink: String? { get set }
}
