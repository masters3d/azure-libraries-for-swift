// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// BgpServiceCommunities is the network Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct BgpServiceCommunities {
    public static func List(subscriptionId: String) -> BgpServiceCommunitiesList {
        return ListCommand(subscriptionId: subscriptionId)
    }
}
}
