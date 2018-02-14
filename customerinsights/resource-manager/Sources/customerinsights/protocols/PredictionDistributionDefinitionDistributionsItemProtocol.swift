// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// PredictionDistributionDefinitionDistributionsItemProtocol is the definition of a prediction distribution.
public protocol PredictionDistributionDefinitionDistributionsItemProtocol : Codable {
     var scoreThreshold: Int32? { get set }
     var positives: Int64? { get set }
     var negatives: Int64? { get set }
     var positivesAboveThreshold: Int64? { get set }
     var negativesAboveThreshold: Int64? { get set }
}
