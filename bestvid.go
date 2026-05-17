// Package bestvid provides small URL helpers for BestVid.
//
// BestVid is available at https://bestvid.net.
package bestvid

import (
	"net/url"
	"strings"
)

const (
	// SiteURL is the public BestVid website.
	SiteURL = "https://bestvid.net"

	// SiteName is the public product name.
	SiteName = "BestVid"
)

// URL returns an absolute BestVid URL for path.
func URL(path string) string {
	base := strings.TrimRight(SiteURL, "/")
	path = strings.TrimSpace(path)
	if path == "" || path == "/" {
		return base
	}
	return base + "/" + strings.TrimLeft(path, "/")
}

// SearchURL returns the BestVid search URL for query.
func SearchURL(query string) string {
	values := url.Values{}
	values.Set("q", strings.TrimSpace(query))
	return URL("/search") + "?" + values.Encode()
}
