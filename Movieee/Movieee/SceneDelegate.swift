import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let rootVC = self.window?.rootViewController {
            let status = UserDefaults.standard.bool(forKey: KeyUserDefault.keyCheckNewUser.rawValue)
            if status {
                guard let mainVC = rootVC.storyboard?.instantiateViewController(withIdentifier: IdStoryboardView.mainVC.rawValue)
                else { return }
                self.window?.rootViewController = mainVC
            }
        }
    }
    
}
