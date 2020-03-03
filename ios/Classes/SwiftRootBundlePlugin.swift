import Flutter
import UIKit

public class SwiftRootBundlePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "root_bundle", binaryMessenger: registrar.messenger())
    let instance = SwiftRootBundlePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if call.method == "getPath" {
        result("file://\(Bundle.main.bundlePath)/Frameworks/App.framework/flutter_assets/")
    } else {
        result(FlutterMethodNotImplemented)
    }
  }
}
