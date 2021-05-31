# PractiseApplication

First Session -> 19-05-2021
covered topic are: SwiftBasic programming -> these work are commit in swiftplayground (swiftconcepts)->bitbucket(https://bitbucket.org/NagendranSelvaraj/swiftconcepts/src/master/)

swiftBasicProgramming - >(https://docs.swift.org/swift-book/GuidedTour/GuidedTour.html)

Second Session -> 20-05-2021
covered topics are: ViewController lifecycle and Foundation library(https://developer.apple.com/documentation/uikit)

21-05-2021 -> UIKit library (https://developer.apple.com/documentation/uikit)

22=05-2021 -> Tableview & Collectionview(Refer in Youtube and stack Overflow)
(TableView:https://thomashanning.com/uitableview-tutorial-for-beginners/)
(CollectionView:https://www.appcoda.com/macos-programming-collection-view/)

23-05-2021 -> sunday
24-05-2021 -> Collectionview & LocalNotification(Refer in Youtube and stack Overflow)
(LocalNotification:https://developer.apple.com/documentation/usernotifications/scheduling_a_notification_locally_from_your_app)

25-05-2021 -> Stackview,scrollview & PersistentStorage(Refer in Youtube)
(Stackview:https://developer.apple.com/documentation/uikit/uistackview)
(Scrollview:Refer in youtube)

26-05-2021 -> PersistentStorage: UserDefaults & CoreData
(UserDefaults:https://www.simpleswiftguide.com/how-to-use-userdefaults-in-swift/#:~:text=UserDefaults%20lets%20you%20store%20key,%2C%20Date%2C%20Array%20or%20Dictionary.&text=UserDefaults%20saves%20its%20data%20in,persisted%20for%20backups%20and%20restores.)

27-05-2021 -> PersistentStorage: CoreData & JSON parsing
(CoreData:https://www.raywenderlich.com/7569-getting-started-with-core-data-tutorial)
28-05-2021 -> JSON parsing & WebService
(JSONParsing & WebService: https://www.hackingwithswift.com/read/7/3/parsing-json-using-the-codable-protocol)

29-05-2021 to 30-05-2021 -> Regitser & Login (Api implementation)
(Register & Login: https://systimanx.xyz/laravel-starter-kit/public/api/documentation)

31-05-2021 -> MapView 
(MapView: https://developers.google.com/maps/documentation/ios-sdk/start#None-swift)


---------------------------------------------------------------------------------XXXXX------------------------------------------------------------------------------

README FILE: (PractiseApplication)
swift programming -> variables & Constant,Functions,optionals,conditionals,for loop,Generics,Closures,Delegation,Protocols and Typecasting 
ViewContoller lifeCycle:
     AppDelegate:   
     
     func applicationWillEnterForeground(_ application: UIApplication) {
        print("Enter Forground")
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("Become Active")
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        print("Resign Active")
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("Background")
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        print("Terminate")
    }
    
ViewController Lifecycle:
    ViewDidLoad - Called when you create the class and load from xib. Great for initial setup and one-time-only work.

   ViewWillAppear - Called right before your view appears, good for hiding/showing fields or any operations that you want to happen every time before the view is                       visible. Because you might be going back and forth between views, this will be called every time your view is about to appear on the screen.

   ViewDidAppear - Called after the view appears - great place to start an animations or the loading of external data from an API.
 
   ViewWillDisappear/DidDisappear - Same idea as ViewWillAppear/ViewDidAppear.
   
    override func loadView() {
        super.loadView()
        print("loadView")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    

FoundationLibrary & UIKitLibrary:
   FoundationLibrary:(Access essential data types, collections, and operating-system services to define the base layer of functionality for your app.)
   UIKitLibrary:(Construct and manage a graphical, event-driven user interface for your iOS or tvOS app.)
   
TableView:
    A view that presents data using rows arranged in a single column.
    
    Static & Dynamic
    UITableViewDataSource & UITableViewDataDelegate
    func numberOfRows(inSection: Int) -> Int
       Returns the number of rows (table cells) in a specified section.
    var numberOfSections: Int
       The number of sections in the table view.
    func cellForRow(at: IndexPath) -> UITableViewCell?
       Returns the table cell at the specified index path.   
    var estimatedRowHeight: CGFloat
       The estimated height of rows in the table view.
    func dequeueReusableCell(withIdentifier: String, for: IndexPath) -> UITableViewCell
       Returns a reusable table-view cell object for the specified reuse identifier and adds it to the table.
    func tableView(UITableView, didSelectRowAt: IndexPath)
       Tells the delegate a row is selected.
       
CollectionView:
    An object that manages an ordered collection of data items and presents them using customizable layouts.
    
    Static & Dynamic
    UICollectionViewDataSource & UICollectionViewDataDelegate:
    var numberOfSections: Int
       The number of sections displayed by the collection view.
    func numberOfItems(inSection: Int) -> Int
       Fetches the count of items in the specified section.
    func register(UINib?, forCellWithReuseIdentifier: String)
       Registers a nib file for use in creating new collection view cells.
    func dequeueReusableCell(withReuseIdentifier: String, for: IndexPath) -> UICollectionViewCell
       Dequeues a reusable cell object located by its identifier.
    func cellForItem(at: IndexPath) -> UICollectionViewCell?
       Gets the visible cell object at the specified index path.
    func collectionView(UICollectionView, didSelectItemAt: IndexPath)
       Tells the delegate that the item at the specified index path was selected.  
       
    UICollectionViewDelegateFlowLayout:
    func collectionView(UICollectionView, layout: UICollectionViewLayout, sizeForItemAt: IndexPath) -> CGSize
       Asks the delegate for the size of the specified item’s cell.
    func collectionView(UICollectionView, layout: UICollectionViewLayout, insetForSectionAt: Int) -> UIEdgeInsets
       Asks the delegate for the margins to apply to content in the specified section.
    func collectionView(UICollectionView, layout: UICollectionViewLayout, minimumLineSpacingForSectionAt: Int) -> CGFloat
       Asks the delegate for the spacing between successive rows or columns of a section.
    func collectionView(UICollectionView, layout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt: Int) -> CGFloat
       Asks the delegate for the spacing between successive items in the rows or columns of a section.

LocalNotification:
    Create and schedule notifications from your app when you want to get the user's attention.
    import UserNotifications
    
    UNTimeIntervalNotificationTrigger
    UNCalendarNotificationTrigger
    UNLocationNotificationTrigger

StackView:
    A streamlined interface for laying out a collection of views in either a column or a row.
    
    Horizontal & Vertical
    * The axis property determines the stack’s orientation, either vertically or horizontally.
    * The distribution property determines the layout of the arranged views along the stack’s axis.
    * The alignment property determines the layout of the arranged views perpendicular to the stack’s axis.
    * The spacing property determines the minimum spacing between arranged views.
    * The isBaselineRelativeArrangement property determines whether the vertical spacing between views is measured from the baselines.
    * The isLayoutMarginsRelativeArrangement property determines whether the stack view lays out its arranged views relative to its layout margins.
    
ScrollView:
   A view that allows the scrolling and zooming of its contained views.
   UIScrollView is the superclass of several UIKit classes, including UITableView and UITextView.
   
   var frameLayoutGuide: UILayoutGuide
      The layout guide based on the untransformed frame rectangle of the scroll view.
   var contentLayoutGuide: UILayoutGuide       
      The layout guide based on the untranslated content rectangle of the scroll view.
   var isScrollEnabled: Bool
       A Boolean value that determines whether scrolling is enabled.
       
PersistentStorage:
   UserDefault & CoreData
   
   UserDefault-> An interface to the user’s defaults database, where you store key-value pairs persistently across launches of your app.
   class UserDefaults : NSObject
   
   * The UserDefaults class provides convenience methods for accessing common types such as floats, doubles, integers, Boolean values, and URLs. These methods are      described in Setting Default Values.
   * A default object must be a property list—that is, an instance of (or for collections, a combination of instances of) NSData, NSString, NSNumber, NSDate,            NSArray, or NSDictionary. If you want to store any other type of object, you should typically archive it to create an instance of NSData.
   * The UserDefaults class is thread-safe.
            
   CoreData -> Persist or cache data on a single device, or sync data to multiple devices with CloudKit.
   CRUD-> Create,Retrive,Update & Delete
   import CoreData
   
   Refer to persistentContainer:
   * Create the context 
   * Create an entity
   * Create new record
   * Set values for the records for each key

   NSManagedObjectModel – object describing schema of designed Data Model. 
   NSManagedObjectContext – monitors changes in entities and store. Interface for CRUD operations.
   NSPersistentStoreCoordinator – saves and loads data from store. Associates persistent stores with a model.
   NSPersistentContainer – initializes and sets up context, model and coordinator.


JSONparsing & WebService:
  JSON -> JavaScript Object Notation
  Codable -> Encodable & Decodable
  API -> Applcation Programming Interface
  WebService -> URLSession.shared.datatask()
  URL -> Uniform Resource Locator
  NSObject -> nextstep
  
  
  struct JSONTest: Codable {
    let date: String
    let time: String
}
    // 1
    let urlString = "http://date.jsontest.com"
    guard let url = URL(string: urlString) else { return }
    
    // 2
    URLSession.shared.dataTask(with: url) { (data, response, error) in
        if error != nil {
            print(error!.localizedDescription)
        }

        guard let data = data else { return }
        do {
            // 3
            //Decode data
            let JSONData = try JSONDecoder().decode(JSONTest.self, from: data)

            // 4
            //Get back to the main queue
            DispatchQueue.main.async {
                self.dateLabel.text = JSONData.date
                self.timeLabel.text = JSONData.time
            }

        } catch let jsonError {
            print(jsonError)
        }
        // 5
        }.resume()
        
  an URL object containis the url of the web service: 
    The dataTask(with:completionHandler:) method creates a task that retrieves the contents of at the URL
    The decode(_:from:) method will perform the decoding of the JSON object
    The date and time values from the JSON object are assigned to the labels
    The resume method begins the web request.

Register & Login:
   * If you want to parse JSON by hand rather than using Codable, iOS has a built-in alternative called JSONSerialization and it can convert a JSON string into a        collection of dictionaries, arrays, strings and numbers in just a few lines of code.
     
   URl -> url
   URLSession.shared.dataTask(Webservice) -> resume()
   URLRequest
   httpmethod -> POST
   JSONSerialization.jsonObject
   DispatchQueue.main.async{}
   showMessage() -> UIAlertAction
   
MapView:
   An embeddable map interface, similar to the one provided by the Maps application.
   import MapKit
   import CoreLocation
   
   class MKMapView : UIView
   class MKMapView : NSView
   
    //1)
    mapV.mapType = MKMapType.Standard

    // 2)
    let location = CLLocationCoordinate2D(latitude: 23.0225,longitude: 72.5714)

    // 3)
    let span = MKCoordinateSpanMake(0.05, 0.05)
    let region = MKCoordinateRegion(center: location, span: span)
    mapV.setRegion(region, animated: true)

    // 4)
    let annotation = MKPointAnnotation()
   
   


