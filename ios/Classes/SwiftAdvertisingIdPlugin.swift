import Flutter
import UIKit

public class SwiftAdvertisingIdPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "advertising_id", binaryMessenger: registrar.messenger())
        let instance = SwiftAdvertisingIdPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "getAdvertisingId":
            if #available(iOS 14.0, *) {
               result("")
            } else {
               result("")
            }            
        case "isLimitAdTrackingEnabled":
            result(false)
        default:
            result(nil)
        }
    }
}
