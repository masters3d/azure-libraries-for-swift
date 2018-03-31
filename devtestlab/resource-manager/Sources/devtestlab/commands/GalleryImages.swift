// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// GalleryImages is the the DevTest Labs Client.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct GalleryImages {
    public static func List(subscriptionId: String, resourceGroupName: String, labName: String) -> GalleryImagesList {
        return ListCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName)
    }
}
}
