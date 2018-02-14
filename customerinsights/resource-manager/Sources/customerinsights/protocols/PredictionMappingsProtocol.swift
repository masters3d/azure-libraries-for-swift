// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// PredictionMappingsProtocol is definition of the link mapping of prediction.
public protocol PredictionMappingsProtocol : Codable {
     var score: String? { get set }
     var grade: String? { get set }
     var reason: String? { get set }
}