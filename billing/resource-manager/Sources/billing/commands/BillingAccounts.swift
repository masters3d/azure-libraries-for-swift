// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// BillingAccounts is the billing client provides access to billing resources for Azure subscriptions.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct BillingAccounts {
    public static func Get(name: String) -> BillingAccountsGet {
        return GetCommand(name: name)
    }
    public static func List() -> BillingAccountsList {
        return ListCommand()
    }
}
}
