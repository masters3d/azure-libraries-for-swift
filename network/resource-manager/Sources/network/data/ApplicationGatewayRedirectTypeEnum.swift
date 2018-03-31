// ApplicationGatewayRedirectType enumerates the values for application gateway redirect type.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum ApplicationGatewayRedirectTypeEnum: String, Codable
{
// Found specifies the found state for application gateway redirect type.
    case Found = "Found"
// Permanent specifies the permanent state for application gateway redirect type.
    case Permanent = "Permanent"
// SeeOther specifies the see other state for application gateway redirect type.
    case SeeOther = "SeeOther"
// Temporary specifies the temporary state for application gateway redirect type.
    case Temporary = "Temporary"
}
