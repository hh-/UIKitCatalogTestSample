Getting Started with this project and running the UI tests

To run these tests locally:
1.  Clone the repository for this UIKitCatalog project
2.  Install the EarlGrey framework:
3.  This can be done with 'brew install cocoapods'
4.  Homebrew can be installed per instructions here:  https://brew.sh/
5.  After installing the EarlGrey framework, open the "UIKitCatalog.xcworkspace" (not the 'UIKitCatalog.xcodeproj' project file) to open the project workspace and run the tests
6.  If in Xcode, you press 'command + 6' and the tests are all grayed out, you'll need to add the test target to the scheme.  To add the target, go to Product > Scheme and select the "UIKitCatalog" scheme.  Then choose Product > Scheme > Edit Scheme.  On the left nav in the modal, select 'Test'.  Then click the '+' (Add) and choose the "UIKitCatalogTests_unitTests" target (which is under 'UIKitCatalog' if there is a collapsed dropdown arrow instead of showing the target).  Then click 'Add' and then 'Close'
7.  Now there should be little arrows that you can click on to run the tests.  Try building and running the UIKitCatalog project itself once in case it is helpful to make the tests accessible to run.

