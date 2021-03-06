// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ComputePolicyListResultProtocol is the list of compute policies in the account.
public protocol ComputePolicyListResultProtocol : Codable {
     var value: [ComputePolicyProtocol?]? { get set }
     var _nextLink: String? { get set }
}
