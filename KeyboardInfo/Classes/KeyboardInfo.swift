import UIKit

public class KeyboardInfo {

    public static let shared = KeyboardInfo()
    
    public var height: CGFloat?
    public var animationCurve: UIViewAnimationOptions?
    public var animationDuration: Double?

    public func setup() {
        NotificationCenter.default.addObserver(self, selector: #selector(getKeyboardInformation), name: .UIKeyboardWillShow, object: nil)
    }

    public func destroy() {
        NotificationCenter.default.removeObserver(self, name: .UIKeyboardWillShow, object: nil)
    }

    @objc private final func getKeyboardInformation(notification: NSNotification) {
        guard let info = notification.userInfo else { return }
        guard let frame = info[UIKeyboardFrameEndUserInfoKey] as? NSValue else { return }
        guard let duration = info[UIKeyboardAnimationDurationUserInfoKey] as? Double else { return }
        guard let curve = info[UIKeyboardAnimationCurveUserInfoKey] as? NSInteger else { return }
        height = frame.cgRectValue.height
        animationDuration = duration
        animationCurve = UIViewAnimationOptions.init(rawValue: UInt(curve))
    }
}
