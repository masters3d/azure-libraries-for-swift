// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// CloudJobListResultProtocol is
public protocol CloudJobListResultProtocol : Codable {
     var value: [CloudJobProtocol?]? { get set }
     var odatanextLink: String? { get set }
}