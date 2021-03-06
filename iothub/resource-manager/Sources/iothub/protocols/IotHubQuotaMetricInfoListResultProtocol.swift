// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// IotHubQuotaMetricInfoListResultProtocol is the JSON-serialized array of IotHubQuotaMetricInfo objects with a next
// link.
public protocol IotHubQuotaMetricInfoListResultProtocol : Codable {
     var value: [IotHubQuotaMetricInfoProtocol?]? { get set }
     var _nextLink: String? { get set }
}
