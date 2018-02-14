// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ResourceNameAvailabilityRequestProtocol is resource name availability request content.
public protocol ResourceNameAvailabilityRequestProtocol : Codable {
     var name: String { get set }
     var type: CheckNameResourceTypesEnum { get set }
     var isFqdn: Bool? { get set }
}
