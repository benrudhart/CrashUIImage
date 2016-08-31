# Crash in UIImage

A rare crash in `UIImage imageNamed:` / `UIImage(named:)` under following circumstances:
- build app with Xcode 8, beta 6
- run on simulator or device with iOS 8 (e.g. 8.4)
- set deployment target of app to iOS 8.3 or 8.4
- imageName must reference an image that is stored in an asset catalog

### Workarounds
- locate the image directly in app bundle, not inside asset catalog
- set deployment target below iOS 8.3 if you need to support iOS 8
