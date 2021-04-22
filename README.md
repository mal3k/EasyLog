# EasyLog

A lightweight library to help logging events verbosely :)

Example: 

[2021-04-22 13:16:55] [ViewController.swift] ⎯ [Line 17] ⎯ viewDidLoad() 💚 ⎯ Log me

Currently, the library logs the following informations:

- Timestamp
- File name
- Line number
- Method name
- Logged event status

Also, as of this version 1.0.2, the library supports the following events status:
```

Error: "❤️"
Debug: "💚" 
Info: "ℹ️" 
Verbose: "🔬" 
Warning: "⚠️" 
Severe: "🔥" 
```

# Installation

The library is available as a Swift Package, Select "File\Swift Package\Add Package Dependency" then copy the lib URL "https://github.com/mal3k/EasyLog" when prompted.

<img width="715" alt="Screenshot 2021-04-22 at 13 11 49" src="https://user-images.githubusercontent.com/1732482/115705130-76ceec80-a36c-11eb-88a1-d25bdec36b4d.png">

<img width="719" alt="Screenshot 2021-04-22 at 13 12 31" src="https://user-images.githubusercontent.com/1732482/115705128-76365600-a36c-11eb-9e41-045d77fc78cf.png">

# How to use

Inside the file you want to use, import the library:
```
#import EasyLog

let logger  = Logger()
logger.d(object: "Log me")
```
The library is not usable as singleton. Usually, you instantiate the library and inject it as dependency for other objects where you want to use.
