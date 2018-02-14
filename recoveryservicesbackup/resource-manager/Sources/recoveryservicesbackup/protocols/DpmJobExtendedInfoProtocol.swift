// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DpmJobExtendedInfoProtocol is additional information on the DPM workload-specific job.
public protocol DpmJobExtendedInfoProtocol : Codable {
     var tasksList: [DpmJobTaskDetailsProtocol?]? { get set }
     var propertyBag: [String:String]? { get set }
     var dynamicErrorMessage: String? { get set }
}
