"""Small URL helpers for BestVid.

BestVid is available at https://bestvid.net.
"""

from urllib.parse import quote_plus

SITE_URL = "https://bestvid.net"
SITE_NAME = "BestVid"


def url(path: str = "") -> str:
    """Return an absolute BestVid URL for a path."""
    normalized = str(path).strip()
    if normalized == "" or normalized == "/":
        return SITE_URL

    return f"{SITE_URL}/{normalized.lstrip('/')}"


def search_url(query: str) -> str:
    """Return the BestVid search URL for a query."""
    return f"{url('/search')}?q={quote_plus(str(query).strip())}"


__all__ = ["SITE_NAME", "SITE_URL", "search_url", "url"]
