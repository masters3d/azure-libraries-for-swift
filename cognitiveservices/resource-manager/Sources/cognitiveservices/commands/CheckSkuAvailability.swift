// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// CheckSkuAvailability is the cognitive Services Management Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct CheckSkuAvailability {
    public static func List(subscriptionId: String, location: String, parameters: CheckSkuAvailabilityParameterProtocol) -> CheckSkuAvailabilityList {
        return ListCommand(subscriptionId: subscriptionId, location: location, parameters: parameters)
    }
}
}
