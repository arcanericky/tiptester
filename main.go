package main

import (
	"fmt"
	"runtime"
)

var versionText = "unknown"

func main() {
	fmt.Printf("Tip Tester %s built with %s\n", versionText, runtime.Version())
}
