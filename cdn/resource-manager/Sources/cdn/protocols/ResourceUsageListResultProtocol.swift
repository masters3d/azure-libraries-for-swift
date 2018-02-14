// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ResourceUsageListResultProtocol is output of check resource usage API.
public protocol ResourceUsageListResultProtocol : Codable {
     var value: [ResourceUsageProtocol?]? { get set }
     var _nextLink: String? { get set }
}
