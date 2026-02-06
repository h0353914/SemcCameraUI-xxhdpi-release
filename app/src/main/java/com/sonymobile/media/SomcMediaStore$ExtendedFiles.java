package com.sonymobile.media;

import android.content.Context;
import android.net.Uri;

public final class SomcMediaStore$ExtendedFiles {
    public static Uri getContentUri(String str) {
        return getContentUri(SomcMediaStore.access$000(), str);
    }

    public static Uri getContentUri(String str, long j) {
        return getContentUri(SomcMediaStore.access$000(), str, j);
    }

    public static Uri getContentUri(Context context, String str) {
        return getContentUri(str, SomcMediaStore.getVersion(context));
    }

    public static Uri getContentUri(Context context, String str, long j) {
        return getContentUri(str, j, SomcMediaStore.getVersion(context));
    }

    public static Uri getContentUri(String str, String str2) {
        if (str2 != null && Integer.parseInt(str2) >= 400) {
            return Uri.parse("content://somcmedia/" + str + "/extended_file");
        }
        return Uri.parse("content://media/" + str + "/extended_file");
    }

    public static Uri getContentUri(String str, long j, String str2) {
        Uri contentUri = getContentUri(str, str2);
        return contentUri != null ? Uri.withAppendedPath(contentUri, String.valueOf(j)) : contentUri;
    }
}
