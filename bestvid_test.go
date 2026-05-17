package bestvid

import "testing"

func TestURL(t *testing.T) {
	tests := []struct {
		name string
		path string
		want string
	}{
		{name: "empty path", path: "", want: "https://bestvid.net"},
		{name: "root path", path: "/", want: "https://bestvid.net"},
		{name: "leading slash", path: "/tools/ai-video", want: "https://bestvid.net/tools/ai-video"},
		{name: "no leading slash", path: "tools/ai-video", want: "https://bestvid.net/tools/ai-video"},
		{name: "trim whitespace", path: " /tools/ai-video ", want: "https://bestvid.net/tools/ai-video"},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got := URL(tt.path)
			if got != tt.want {
				t.Fatalf("URL(%q) = %q, want %q", tt.path, got, tt.want)
			}
		})
	}
}

func TestSearchURL(t *testing.T) {
	got := SearchURL(" ai video generator ")
	want := "https://bestvid.net/search?q=ai+video+generator"
	if got != want {
		t.Fatalf("SearchURL() = %q, want %q", got, want)
	}
}
