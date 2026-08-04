package com.sonymobile.media;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import java.util.List;

public final class SomcMediaStore {
    public static final String AUTHORITY_NEW = "somcmedia";
    public static final int AUTHORITY_NEW_VERSION = 400;
    public static final String AUTHORITY_OLD = "media";
    public static final String EXTERNAL_VOLUME = "external";
    private static String versionCache;

    public static final class ExtendedFiles {

        public interface ExtendedFileColumns extends MediaStore.Files.FileColumns {
            public static final int SOMC_CATEGORY_NONE = 0;
            public static final int SOMC_CATEGORY_SEQUENCE = 2;
            public static final int SOMC_CATEGORY_SEQUENCE_COVER = 3;
            public static final int SOMC_CATEGORY_SINGLES = 1;
            public static final String SOMC_FILE_TYPE = "somctype";
            public static final int SOMC_FILE_TYPE_AR_EFFECT = 7;
            public static final int SOMC_FILE_TYPE_BACKGROUND_DEFOCUS = 9;
            public static final int SOMC_FILE_TYPE_BURST_COVER = 2;
            public static final int SOMC_FILE_TYPE_BURST_IMAGE = 129;
            public static final int SOMC_FILE_TYPE_CINEMAGRAPH = 8;
            public static final int SOMC_FILE_TYPE_HIGHLIGHT_VIDEO = 14;
            public static final int SOMC_FILE_TYPE_HI_RES_AUDIO = 13;
            public static final int SOMC_FILE_TYPE_INFO_EYE = 5;
            public static final int SOMC_FILE_TYPE_NONE = 0;
            public static final int SOMC_FILE_TYPE_SOCIAL_CAST = 6;
            public static final int SOMC_FILE_TYPE_SOUNDPHOTO = 42;
            public static final int SOMC_FILE_TYPE_TIMESHIFT_COVER = 4;
            public static final int SOMC_FILE_TYPE_TIMESHIFT_IMAGE = 130;
            public static final int SOMC_FILE_TYPE_TIMESHIFT_VIDEO = 12;
            public static final int SOMC_FILE_TYPE_TIMESHIFT_VIDEO_120F = 11;
            public static final int SOMC_FILE_TYPE_WIKITUDE = 10;
            public static final String SOMC_FOLDER_CATEGORY = "somccategory";
        }

        public static Uri getContentUri(String str) {
            return getContentUri(SomcMediaStore.getContext(), str);
        }

        public static Uri getContentUri(String str, long j) {
            return getContentUri(SomcMediaStore.getContext(), str, j);
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

    public static Uri makeMediaStoreUri(Uri uri) {
        return makeMediaStoreUri(getContext(), uri);
    }

    public static Uri makeMediaStoreUri(Context context, Uri uri) {
        return makeMediaStoreUri(uri, getVersion(context));
    }

    public static Uri makeMediaStoreUri(Uri uri, String str) {
        String authority = uri.getAuthority();
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() < 2) {
            return null;
        }
        if (str != null && Integer.parseInt(str) >= 400) {
            if (authority.equals(AUTHORITY_NEW) && pathSegments.get(1).equals("extended_file")) {
                return Uri.parse(Uri.parse(uri.toString().replaceFirst("extended_file", "file")).toString().replaceFirst(AUTHORITY_NEW, AUTHORITY_OLD));
            }
            return null;
        }
        if (authority.equals(AUTHORITY_OLD) && pathSegments.get(1).equals("extended_file")) {
            return Uri.parse(uri.toString().replaceFirst("extended_file", "file"));
        }
        return null;
    }

    public static String getVersion(Context context) {
        String version = versionCache;
        if (version == null) {
            version = getVersionNew(context);
            if (version == null) {
                version = getVersionOld(context);
            }
            if (version == null) {
                version = getVersionTooOld(context);
            }
            versionCache = version;
        }
        return version;
    }

    private static String getVersionTooOld(Context context) {
        Cursor cursor = null;
        try {
            ContentResolver resolver = context.getContentResolver();
            Uri uri = Uri.parse("content://media/internal/extended_version");
            cursor = resolver.query(uri, new String[]{"version"}, null, null, null);
            if (cursor != null && cursor.moveToFirst()) {
                return cursor.getString(0);
            }
        } catch (Exception unused) {
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
        return null;
    }

    private static String getVersionOld(Context context) {
        Cursor cursor = null;
        try {
            ContentResolver resolver = context.getContentResolver();
            Uri uri = Uri.parse("content://media/external/extended_version");
            cursor = resolver.query(uri, new String[]{"value"}, "key='version'", null, null);
            if (cursor != null && cursor.moveToFirst()) {
                return cursor.getString(0);
            }
        } catch (Exception unused) {
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
        return null;
    }

    private static String getVersionNew(Context context) {
        Cursor cursor = null;
        try {
            ContentResolver resolver = context.getContentResolver();
            Uri uri = Uri.parse("content://somcmedia/none/version");
            cursor = resolver.query(uri, null, null, null, null);
            if (cursor != null && cursor.moveToFirst()) {
                return cursor.getString(0);
            }
        } catch (Exception unused) {
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    private static Context getContext() {
        try {
            return (Context) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, (Object[]) null);
        } catch (Exception unused) {
            return null;
        }
    }
}
