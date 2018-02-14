// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// BaselinePropertiesProtocol is the baseline properties class.
public protocol BaselinePropertiesProtocol : Codable {
     var timespan: String? { get set }
     var interval: String? { get set }
     var aggregation: String? { get set }
     var timestamps: [Date]? { get set }
     var baseline: [BaselineProtocol?]? { get set }
     var metadata: [BaselineMetadataValueProtocol?]? { get set }
}
