#import "RootBundlePlugin.h"
#if __has_include(<root_bundle/root_bundle-Swift.h>)
#import <root_bundle/root_bundle-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "root_bundle-Swift.h"
#endif

@implementation RootBundlePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftRootBundlePlugin registerWithRegistrar:registrar];
}
@end
