// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// TimeWindowProtocol is a specific date-time for the profile.
public protocol TimeWindowProtocol : Codable {
     var timeZone: String? { get set }
     var start: Date { get set }
     var end: Date { get set }
}