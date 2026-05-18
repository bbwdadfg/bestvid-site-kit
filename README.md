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

npm:

```sh
npm install bestvid-site-kit
```

Python:

```sh
pip install bestvid-site-kit
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

Node:

```js
const bestvid = require("bestvid-site-kit");

console.log(bestvid.url("/tools/ai-video"));
console.log(bestvid.searchUrl("ai video generator"));
```

Python:

```python
import bestvid_site_kit as bestvid

print(bestvid.url("/tools/ai-video"))
print(bestvid.search_url("ai video generator"))
```
