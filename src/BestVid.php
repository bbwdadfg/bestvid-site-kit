<?php

declare(strict_types=1);

namespace BestVid\SiteKit;

final class BestVid
{
    public const SITE_URL = 'https://bestvid.net';
    public const SITE_NAME = 'BestVid';

    public static function url(string $path = ''): string
    {
        $path = trim($path);

        if ($path === '' || $path === '/') {
            return self::SITE_URL;
        }

        return self::SITE_URL . '/' . ltrim($path, '/');
    }

    public static function searchUrl(string $query): string
    {
        return self::url('/search') . '?' . http_build_query([
            'q' => trim($query),
        ]);
    }
}
