// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// JobPropertiesProtocol is job custom data details.
public protocol JobPropertiesProtocol : Codable {
     var activityId: String? { get set }
     var scenarioName: String? { get set }
     var friendlyName: String? { get set }
     var state: String? { get set }
     var stateDescription: String? { get set }
     var tasks: [ASRTaskProtocol?]? { get set }
     var errors: [JobErrorDetailsProtocol?]? { get set }
     var startTime: Date? { get set }
     var endTime: Date? { get set }
     var allowedActions: [String]? { get set }
     var targetObjectId: String? { get set }
     var targetObjectName: String? { get set }
     var targetInstanceType: String? { get set }
     var customDetails: JobDetailsProtocol? { get set }
}
