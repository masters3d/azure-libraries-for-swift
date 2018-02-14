// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AvailableProvidersListStateProtocol is state details.
public protocol AvailableProvidersListStateProtocol : Codable {
     var stateName: String? { get set }
     var providers: [String]? { get set }
     var cities: [AvailableProvidersListCityProtocol?]? { get set }
}