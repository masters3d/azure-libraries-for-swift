// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DatabaseUsageListResultProtocol is the response to a list database metrics request.
public protocol DatabaseUsageListResultProtocol : Codable {
     var value: [DatabaseUsageProtocol] { get set }
}
