// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ActivityListResultProtocol is the response model for the list activity operation.
public protocol ActivityListResultProtocol : Codable {
     var value: [ActivityProtocol?]? { get set }
     var _nextLink: String? { get set }
}
