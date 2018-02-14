// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ResourceMetricCollectionProtocol is collection of metric responses.
public protocol ResourceMetricCollectionProtocol : Codable {
     var value: [ResourceMetricProtocol] { get set }
     var _nextLink: String? { get set }
}
