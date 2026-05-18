//! Small URL helpers for [BestVid](https://bestvid.net).

/// Public BestVid website URL.
pub const SITE_URL: &str = "https://bestvid.net";

/// Public product name.
pub const SITE_NAME: &str = "BestVid";

/// Returns an absolute BestVid URL for a path.
pub fn url(path: &str) -> String {
    let path = path.trim();

    if path.is_empty() || path == "/" {
        return SITE_URL.to_string();
    }

    format!("{}/{}", SITE_URL, path.trim_start_matches('/'))
}

/// Returns the BestVid search URL for a query.
pub fn search_url(query: &str) -> String {
    format!("{}/search?q={}", SITE_URL, encode_query(query.trim()))
}

fn encode_query(query: &str) -> String {
    query
        .bytes()
        .flat_map(|byte| match byte {
            b' ' => "+".bytes().collect::<Vec<_>>(),
            b'A'..=b'Z' | b'a'..=b'z' | b'0'..=b'9' | b'-' | b'_' | b'.' | b'~' => vec![byte],
            _ => format!("%{byte:02X}").into_bytes(),
        })
        .map(char::from)
        .collect()
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn builds_absolute_urls() {
        assert_eq!(url(""), "https://bestvid.net");
        assert_eq!(url("/"), "https://bestvid.net");
        assert_eq!(url("/tools/ai-video"), "https://bestvid.net/tools/ai-video");
        assert_eq!(url("tools/ai-video"), "https://bestvid.net/tools/ai-video");
        assert_eq!(url(" /tools/ai-video "), "https://bestvid.net/tools/ai-video");
    }

    #[test]
    fn builds_search_urls() {
        assert_eq!(
            search_url(" ai video generator "),
            "https://bestvid.net/search?q=ai+video+generator"
        );
        assert_eq!(search_url("video/editor"), "https://bestvid.net/search?q=video%2Feditor");
    }
}
