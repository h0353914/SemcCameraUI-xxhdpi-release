package com.sonymobile.media;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SomcMediaStore {
    public static final String AUTHORITY_NEW = "somcmedia";
    public static final int AUTHORITY_NEW_VERSION = 400;
    public static final String AUTHORITY_OLD = "media";
    public static final String EXTERNAL_VOLUME = "external";
    private static String versionCache;

    static /* synthetic */ Context access$000() {
        return getContext();
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
            if (authority.equals("somcmedia") && pathSegments.get(1).equals("extended_file")) {
                return Uri.parse(Uri.parse(uri.toString().replaceFirst("extended_file", "file")).toString().replaceFirst("somcmedia", "media"));
            }
            return null;
        }
        if (authority.equals("media") && pathSegments.get(1).equals("extended_file")) {
            return Uri.parse(uri.toString().replaceFirst("extended_file", "file"));
        }
        return null;
    }

    public static String getVersion(Context context) throws Throwable {
        String versionNew = versionCache;
        if (versionNew == null) {
            versionNew = getVersionNew(context);
            if (versionNew == null && (versionNew = getVersionOld(context)) == null) {
                versionNew = getVersionTooOld(context);
            }
            versionCache = versionNew;
        }
        return versionNew;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003d A[PHI: r8
      0x003d: PHI (r8v5 android.database.Cursor) = (r8v4 android.database.Cursor), (r8v8 android.database.Cursor) binds: [B:20:0x003b, B:13:0x0030] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String getVersionTooOld(Context context) throws Throwable {
        Cursor cursorQuery;
        Cursor cursor = null;
        try {
            cursorQuery = context.getContentResolver().query(Uri.parse("content://media/internal/extended_version"), new String[]{"version"}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(0);
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return string;
                    }
                } catch (Exception unused) {
                    if (cursorQuery != null) {
                    }
                } catch (Throwable th) {
                    cursor = cursorQuery;
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
        } catch (Exception unused2) {
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003e A[PHI: r8
      0x003e: PHI (r8v5 android.database.Cursor) = (r8v4 android.database.Cursor), (r8v8 android.database.Cursor) binds: [B:20:0x003c, B:13:0x0031] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String getVersionOld(Context context) throws Throwable {
        Cursor cursorQuery;
        Cursor cursor = null;
        try {
            cursorQuery = context.getContentResolver().query(Uri.parse("content://media/external/extended_version"), new String[]{"value"}, "key='version'", null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(0);
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return string;
                    }
                } catch (Exception unused) {
                    if (cursorQuery != null) {
                    }
                } catch (Throwable th) {
                    cursor = cursorQuery;
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
        } catch (Exception unused2) {
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0038 A[PHI: r8
      0x0038: PHI (r8v5 android.database.Cursor) = (r8v4 android.database.Cursor), (r8v7 android.database.Cursor) binds: [B:20:0x0036, B:13:0x002b] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String getVersionNew(Context context) throws Throwable {
        Cursor cursorQuery;
        Cursor cursor = null;
        try {
            cursorQuery = context.getContentResolver().query(Uri.parse("content://somcmedia/none/version"), null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(0);
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return string;
                    }
                } catch (Exception unused) {
                    if (cursorQuery != null) {
                    }
                } catch (Throwable th) {
                    cursor = cursorQuery;
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
        } catch (Exception unused2) {
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    private static Context getContext() {
        try {
            return (Context) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, (Object[]) null);
        } catch (Exception unused) {
            return null;
        }
    }
}
