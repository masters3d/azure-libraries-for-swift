// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ContainerServiceListResultProtocol is the response from the List Container Services operation.
public protocol ContainerServiceListResultProtocol : Codable {
     var value: [ContainerServiceProtocol?]? { get set }
     var _nextLink: String? { get set }
}
