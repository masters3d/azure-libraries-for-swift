// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// MetricListResultProtocol is the response to a list metrics request.
public protocol MetricListResultProtocol : Codable {
     var value: [MetricProtocol?]? { get set }
}
