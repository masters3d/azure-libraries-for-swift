// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// CheckNameAvailabilityOutputProtocol is output of check name availability API.
public protocol CheckNameAvailabilityOutputProtocol : Codable {
     var nameAvailable: Bool? { get set }
     var reason: String? { get set }
     var message: String? { get set }
}
