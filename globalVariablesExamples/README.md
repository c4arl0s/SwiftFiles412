``` swift
#!/usr/bin/swift
// Global variables are defined outside of a function, method, or closure, and are not defined within a type (think outside of all brackets). 
// They can be used anywhere:

let globalString = "I'm global!"
print(globalString)

func useGlobalString() {
    print(globalString) // works!
}
```

``` swift
#!/usr/bin/swift
// ==========================
var num: Int = 10
num = 20 // num now equals 20
print(num)
// ==========================
```

