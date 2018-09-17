enum MyMode: String {
  case happy
  case notHappy
func takeAction() {
      switch self {
      case .notHappy:
          print("Go meet someone and talk")
       case .happy:
          print("Enjoy your day and little things around you 😍")
       }
   }
}
MyMode.notHappy.takeAction()
MyMode.happy.takeAction()