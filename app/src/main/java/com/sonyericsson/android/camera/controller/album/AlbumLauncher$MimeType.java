package com.sonyericsson.android.camera.controller.album;

enum AlbumLauncher$MimeType {
    PHOTO("image/jpeg"),
    MPO("image/mpo"),
    MP4("video/mp4"),
    THREEGPP("video/3gpp"),
    UNKOWN("");

    final String mText;

    AlbumLauncher$MimeType(String str) {
        this.mText = str;
    }

    static AlbumLauncher$MimeType fromText(String str) {
        for (AlbumLauncher$MimeType albumLauncher$MimeType : values()) {
            if (albumLauncher$MimeType.mText.equals(str)) {
                return albumLauncher$MimeType;
            }
        }
        return UNKOWN;
    }
}
