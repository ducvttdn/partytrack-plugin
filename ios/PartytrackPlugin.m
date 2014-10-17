// PartytrackPlugin.h

#import "PartytrackPlugin.h"

@implementation PartytrackPlugin

- (void)startWithAppIDAndKey: (CDVInvokedUrlCommand*) command
{
    CDVPluginResult* pluginResult = nil;
    int appId = [[command.arguments objectAtIndex:0] intValue];
    NSString* appKey = [command.arguments objectAtIndex:1];

    [[Partytrack sharedInstance] startWithAppID:appId AndKey: appKey];

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setConfigureWithNameAndValue: (CDVInvokedUrlCommand*) command
{
    CDVPluginResult* pluginResult = nil;
    NSString* configureName = [command.arguments objectAtIndex:0];
    NSString* configureValue = [command.arguments objectAtIndex:1];

    [[Partytrack sharedInstance] setConfigureWithName:configureName AndValue:configureValue];

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
