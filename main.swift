import Cocoa
import IOKit.ps

class AppDelegate: NSObject, NSApplicationDelegate {
    var window: NSWindow!
    
    func getBatteryLevel() -> String {
        // 获取电池信息
        let powerSource = IOPSCopyPowerSourcesInfo().takeRetainedValue()
        let powerSourcesList = IOPSCopyPowerSourcesList(powerSource).takeRetainedValue() as Array
        
        if let powerSource = (powerSourcesList as Array).first {
            let powerSourceDesc = IOPSGetPowerSourceDescription(powerSource, powerSource).takeUnretainedValue() as! [String: Any]
            
            if let capacity = powerSourceDesc[kIOPSCurrentCapacityKey] as? Int {
                return "\(capacity)%"
            }
        }
        return "Unknown"
    }
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        let frame = NSRect(x: 0, y: 0, width: 500, height: 500)
        window = NSWindow(contentRect: frame,
                         styleMask: [.titled, .closable, .miniaturizable],
                         backing: .buffered,
                         defer: false)
        
        // Hello Tom 标签
        let helloLabel = NSTextField(frame: NSRect(x: 0, y: 50, width: 200, height: 50))
        helloLabel.stringValue = "Hello Tom!"
        helloLabel.font = NSFont.systemFont(ofSize: 24)
        helloLabel.alignment = .center
        helloLabel.isBezeled = false
        helloLabel.isEditable = false
        helloLabel.drawsBackground = false
        
        // 电池电量标签
        let batteryLabel = NSTextField(frame: NSRect(x: 0, y: -50, width: 200, height: 50))
        batteryLabel.stringValue = "Battery Level: \(getBatteryLevel())"
        batteryLabel.font = NSFont.systemFont(ofSize: 18)
        batteryLabel.alignment = .center
        batteryLabel.isBezeled = false
        batteryLabel.isEditable = false
        batteryLabel.drawsBackground = false
        
        window.contentView?.addSubview(helloLabel)
        window.contentView?.addSubview(batteryLabel)
        
        // 居中显示标签
        if let contentView = window.contentView {
            helloLabel.frame.origin.x = (contentView.frame.width - helloLabel.frame.width) / 2
            helloLabel.frame.origin.y = (contentView.frame.height - helloLabel.frame.height) / 2
            
            batteryLabel.frame.origin.x = (contentView.frame.width - batteryLabel.frame.width) / 2
            batteryLabel.frame.origin.y = helloLabel.frame.origin.y - 40
        }
        
        window.center()
        window.title = "Hello Tom"
        window.backgroundColor = NSColor.systemGreen
        window.makeKeyAndOrderFront(nil)
    }
}

let app = NSApplication.shared
let delegate = AppDelegate()
app.delegate = delegate
app.run() 