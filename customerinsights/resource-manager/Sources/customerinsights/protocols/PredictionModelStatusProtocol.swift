// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// PredictionModelStatusProtocol is the prediction model status.
public protocol PredictionModelStatusProtocol : Codable {
     var tenantId: String? { get set }
     var predictionName: String? { get set }
     var predictionGuidId: String? { get set }
     var status: PredictionModelLifeCycleEnum { get set }
     var message: String? { get set }
     var trainingSetCount: Int32? { get set }
     var testSetCount: Int32? { get set }
     var validationSetCount: Int32? { get set }
     var trainingAccuracy: Int32? { get set }
     var signalsUsed: Int32? { get set }
     var modelVersion: String? { get set }
}
