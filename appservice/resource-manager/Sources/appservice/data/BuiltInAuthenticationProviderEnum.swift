// BuiltInAuthenticationProvider enumerates the values for built in authentication provider.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum BuiltInAuthenticationProviderEnum: String, Codable
{
// AzureActiveDirectory specifies the azure active directory state for built in authentication provider.
    case AzureActiveDirectory = "AzureActiveDirectory"
// Facebook specifies the facebook state for built in authentication provider.
    case Facebook = "Facebook"
// Google specifies the google state for built in authentication provider.
    case Google = "Google"
// MicrosoftAccount specifies the microsoft account state for built in authentication provider.
    case MicrosoftAccount = "MicrosoftAccount"
// Twitter specifies the twitter state for built in authentication provider.
    case Twitter = "Twitter"
}
