# BestVid Site Kit

Small Go helpers for building links to [BestVid](https://bestvid.net), an AI video and content generation website.

## Install

Go:

```sh
go get github.com/bbwdadfg/bestvid-site-kit
```

Composer:

```sh
composer require bbwdadfg/bestvid-site-kit
```

Rust:

```sh
cargo add bestvid-site-kit
```

Ruby:

```sh
gem install bestvid-site-kit
```

## Usage

Go:

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

Rust:

```rust
println!("{}", bestvid_site_kit::url("/tools/ai-video"));
println!("{}", bestvid_site_kit::search_url("ai video generator"));
```

Ruby:

```ruby
require "bestvid/site_kit"

puts BestVid::SiteKit.url("/tools/ai-video")
puts BestVid::SiteKit.search_url("ai video generator")
```
