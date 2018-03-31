// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ProfilePropertiesProtocol is the JSON object that contains the properties required to create a profile.
public protocol ProfilePropertiesProtocol : Codable {
     var resourceState: ProfileResourceStateEnum? { get set }
     var provisioningState: String? { get set }
}
