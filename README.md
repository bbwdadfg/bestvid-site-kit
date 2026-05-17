# BestVid Site Kit

Small Go helpers for building links to [BestVid](https://bestvid.net), an AI video and content generation website.

## Install

```sh
go get github.com/bbwdadfg/bestvid-site-kit
```

## Usage

```go
package main

import (
	"fmt"

	bestvid "github.com/bbwdadfg/bestvid-site-kit"
)

func main() {
	fmt.Println(bestvid.URL("/tools/ai-video"))
	fmt.Println(bestvid.SearchURL("ai video generator"))
}
```
