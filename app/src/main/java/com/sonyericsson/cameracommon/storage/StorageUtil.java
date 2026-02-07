package com.sonyericsson.cameracommon.storage;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.os.UserHandle;
import android.os.storage.DiskInfo;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.os.storage.VolumeInfo;
import android.provider.DocumentsContract;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.sonyericsson.android.camera.setting.SharedPreferencesAccessor;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.mediasaving.StorageManagerProxy;
import java.io.File;
import java.io.FileNotFoundException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class StorageUtil {
    private static final String DUMMY_FILE_MIME_TYPE = "text/plane";
    private static final String DUMMY_FILE_NAME = "sdcard_write_test";
    private static final List<Storage$StorageType> MOUNTABLE_STORAGE_TYPES;
    public static final String TAG = "StorageUtil";
    private static Method mMethodMyUserId;

    public static void preload() {
    }

    static {
        try {
            mMethodMyUserId = UserHandle.class.getMethod("myUserId", new Class[0]);
            MOUNTABLE_STORAGE_TYPES = new ArrayList();
            MOUNTABLE_STORAGE_TYPES.add(Storage$StorageType.EXTERNAL_CARD);
            MOUNTABLE_STORAGE_TYPES.add(Storage$StorageType.INTERNAL);
        } catch (NoSuchMethodException e) {
            throw new RuntimeException(e);
        }
    }

    public static String getVolumeState(Storage$StorageType storage$StorageType, Context context) {
        String environmentForState = "removed";
        Iterator<VolumeInfo> it = getStorageManager(context).getVolumes().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            VolumeInfo next = it.next();
            if (getVolumeType(next) == storage$StorageType) {
                environmentForState = VolumeInfo.getEnvironmentForState(next.getState());
                break;
            }
        }
        if (CamLog.VERBOSE) {
            CamLog.d("getVolumeState type: " + storage$StorageType + " = " + environmentForState);
        }
        return environmentForState;
    }

    public static String[] getMountedPaths(Context context) {
        ArrayList arrayList = new ArrayList();
        Iterator<VolumeInfo> it = getStorageManager(context).getVolumes().iterator();
        while (it.hasNext()) {
            String volumePath = getVolumePath(it.next());
            if (volumePath != null) {
                arrayList.add(volumePath);
                if (CamLog.VERBOSE) {
                    CamLog.d("mount point: " + volumePath);
                }
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static Storage$StorageType getStorageTypeFromPath(String str, Context context) {
        if (CamLog.VERBOSE) {
            CamLog.d("getStorageTypeFromPath: " + str);
        }
        if (str == null) {
            return Storage$StorageType.UNKNOWN;
        }
        Storage$StorageType volumeType = Storage$StorageType.UNKNOWN;
        for (VolumeInfo volumeInfo : getStorageManager(context).getVolumes()) {
            String volumePath = getVolumePath(volumeInfo);
            if (volumePath != null && str.startsWith(volumePath)) {
                volumeType = getVolumeType(volumeInfo);
            }
        }
        if (CamLog.VERBOSE) {
            CamLog.d("getStorageTypeFromPath: " + volumeType);
        }
        return volumeType;
    }

    public static Storage$StorageType getStorageTypeFromUri(Uri uri, Context context) {
        if (CamLog.VERBOSE) {
            CamLog.d("getStorageTypeFromUri uri: " + uri);
        }
        Storage$StorageType storageTypeFromPath = getStorageTypeFromPath(getPathFromUri(context, uri), context);
        if (CamLog.VERBOSE) {
            CamLog.d("getStorageTypeFromUri type: " + storageTypeFromPath);
        }
        return storageTypeFromPath;
    }

    public static String getPathFromType(Storage$StorageType storage$StorageType, Context context) {
        for (VolumeInfo volumeInfo : getStorageManager(context).getVolumes()) {
            if (storage$StorageType.equals(getVolumeType(volumeInfo))) {
                return getVolumePath(volumeInfo);
            }
        }
        return null;
    }

    static String getPathFromUri(Context context, Uri uri) {
        String pathFromUriByMediaDb;
        if (uri == null) {
            if (CamLog.VERBOSE) {
                CamLog.d("uri: null");
            }
            return null;
        }
        String path = uri.getPath();
        if (path == null) {
            if (CamLog.VERBOSE) {
                CamLog.d("getPath(): null");
            }
            return null;
        }
        Iterator<VolumeInfo> it = getStorageManager(context).getVolumes().iterator();
        while (it.hasNext()) {
            String volumePath = getVolumePath(it.next());
            if (volumePath != null && path.contains(volumePath)) {
                if (CamLog.VERBOSE) {
                    CamLog.d("valid file: " + volumePath);
                }
                return volumePath;
            }
        }
        if ("content".equalsIgnoreCase(uri.getScheme()) && "media".equalsIgnoreCase(uri.getAuthority()) && (pathFromUriByMediaDb = getPathFromUriByMediaDb(context, uri)) != null) {
            return pathFromUriByMediaDb;
        }
        String pathFromType = getPathFromType(Storage$StorageType.INTERNAL, context);
        if (CamLog.VERBOSE) {
            CamLog.d("extracted path: " + pathFromType);
        }
        return pathFromType;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00c9 A[PHI: r8
      0x00c9: PHI (r8v5 android.database.Cursor) = (r8v4 android.database.Cursor), (r8v6 android.database.Cursor) binds: [B:42:0x00c7, B:34:0x00b9] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String getPathFromUriByMediaDb(Context context, Uri uri) throws Throwable {
        Cursor cursorQuery;
        try {
            cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("_data");
                        if (cursorQuery.getType(columnIndexOrThrow) != 3) {
                            if (CamLog.VERBOSE) {
                                CamLog.d("no path in content: " + cursorQuery.getType(0));
                            }
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            return null;
                        }
                        String string = cursorQuery.getString(columnIndexOrThrow);
                        Iterator<VolumeInfo> it = getStorageManager(context).getVolumes().iterator();
                        while (it.hasNext()) {
                            String volumePath = getVolumePath(it.next());
                            if (volumePath != null && string.contains(volumePath)) {
                                if (CamLog.VERBOSE) {
                                    CamLog.d("valid content: " + volumePath);
                                }
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                }
                                return volumePath;
                            }
                        }
                        if (CamLog.VERBOSE) {
                            CamLog.d("invalid content path: " + string);
                        }
                    }
                } catch (Exception unused) {
                    if (cursorQuery != null) {
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    throw th;
                }
            }
        } catch (Exception unused2) {
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    private static StorageManagerProxy getStorageManager(Context context) {
        return StorageManagerProxy.createProxy((StorageManager) context.getSystemService("storage"));
    }

    private static Storage$StorageType getVolumeType(VolumeInfo volumeInfo) {
        int type = volumeInfo.getType();
        if (type == 2) {
            return Storage$StorageType.INTERNAL;
        }
        if (type == 0) {
            DiskInfo disk = volumeInfo.getDisk();
            int i = disk != null ? disk.flags : 0;
            if ((i & 4) != 0) {
                return Storage$StorageType.EXTERNAL_CARD;
            }
            if ((i & 8) != 0) {
                return Storage$StorageType.USB;
            }
        }
        return Storage$StorageType.UNKNOWN;
    }

    @NonNull
    public static List<Storage$StorageType> getMountableStorageTypes() {
        return MOUNTABLE_STORAGE_TYPES;
    }

    private static String getVolumePath(VolumeInfo volumeInfo) {
        File path;
        try {
            path = volumeInfo.getPathForUser(((Integer) mMethodMyUserId.invoke(null, new Object[0])).intValue());
        } catch (IllegalAccessException | InvocationTargetException unused) {
            path = null;
        }
        if (path == null) {
            path = volumeInfo.getPath();
        }
        if (path == null) {
            return null;
        }
        return path.getPath();
    }

    public static String getVolumeUuid(Storage$StorageType storage$StorageType, Context context) {
        String fsUuid;
        Iterator<VolumeInfo> it = getStorageManager(context).getVolumes().iterator();
        while (true) {
            if (!it.hasNext()) {
                fsUuid = null;
                break;
            }
            VolumeInfo next = it.next();
            if (getVolumeType(next) == storage$StorageType) {
                fsUuid = next.getFsUuid();
                break;
            }
        }
        if (CamLog.VERBOSE) {
            CamLog.d("getVolumeUuid : " + fsUuid);
        }
        return fsUuid;
    }

    public static Uri getSdCardGrantedUri(Context context) {
        String string = new SharedPreferencesAccessor(context, "com.sonyericsson.android.camera.shared_preferences").readString("KEY_SD_CARD_GRANT_URI", null);
        if (string != null) {
            return Uri.parse(string);
        }
        return null;
    }

    public static void setSdCardGranted(Context context, Uri uri) {
        if (uri != null) {
            new SharedPreferencesAccessor(context, "com.sonyericsson.android.camera.shared_preferences").writeString("KEY_SD_CARD_GRANT_URI", uri.toString(), true);
        }
    }

    static CameraStorageManager$GrantCheckResult checkSdCardGranted(Context context, Uri uri) {
        if (CamLog.DEBUG) {
            CamLog.d("isSdCardGranted()");
        }
        CameraStorageManager$GrantCheckResult cameraStorageManager$GrantCheckResult = CameraStorageManager$GrantCheckResult.UNGRANTED;
        if (uri == null) {
            CamLog.w("checkUri is null");
            return cameraStorageManager$GrantCheckResult;
        }
        try {
            Uri uriCreateDocument = DocumentsContract.createDocument(context.getContentResolver(), DocumentsContract.buildDocumentUriUsingTree(uri, DocumentsContract.getTreeDocumentId(uri)), "text/plane", "sdcard_write_test");
            if (uriCreateDocument != null) {
                if (DocumentsContract.deleteDocument(context.getContentResolver(), uriCreateDocument)) {
                    if (CamLog.DEBUG) {
                        CamLog.d("SD Card is granted.");
                    }
                    cameraStorageManager$GrantCheckResult = CameraStorageManager$GrantCheckResult.GRANTED;
                } else {
                    CamLog.e("SD Card is no granted for delete error.");
                }
            } else if (CamLog.DEBUG) {
                CamLog.d("SD Card is no granted for createDocument failed.");
            }
        } catch (FileNotFoundException | SecurityException e) {
            CamLog.w("file create failed", e);
        } catch (IllegalStateException e2) {
            CamLog.w("file create failed", e2);
            cameraStorageManager$GrantCheckResult = CameraStorageManager$GrantCheckResult.READ_ONLY;
        }
        if (CamLog.DEBUG) {
            CamLog.d("isSDCardGranted() result :" + cameraStorageManager$GrantCheckResult);
        }
        return cameraStorageManager$GrantCheckResult;
    }

    public static synchronized Uri createFile(Context context, Uri uri, String str) {
        Uri uriCreateDocument;
        Uri uriChild = child(uri, str);
        if (exists(context, uriChild)) {
            return uriChild;
        }
        Uri uriBuildDocumentUriUsingTree = DocumentsContract.buildDocumentUriUsingTree(uriChild, DocumentsContract.getTreeDocumentId(uriChild));
        String parent = new File(str).getParent();
        if (!TextUtils.isEmpty(parent)) {
            uriBuildDocumentUriUsingTree = createDirectory(context, uri, parent);
        }
        String ext = getExt(uriChild);
        String documentName = getDocumentName(uriChild);
        if (TextUtils.isEmpty(ext) || TextUtils.isEmpty(documentName)) {
            uriCreateDocument = null;
        } else {
            try {
                uriCreateDocument = DocumentsContract.createDocument(context.getContentResolver(), uriBuildDocumentUriUsingTree, MimeTypeMap.getSingleton().getMimeTypeFromExtension(ext), documentName);
            } catch (FileNotFoundException | SecurityException e) {
                CamLog.w("createFile() failed", e);
                uriCreateDocument = null;
            }
        }
        return uriCreateDocument;
    }

    public static synchronized Uri createDirectory(Context context, Uri uri, String str) {
        Uri uriCreateDocument;
        Uri uriChild = child(uri, str);
        if (exists(context, uriChild)) {
            return uriChild;
        }
        Uri uriBuildDocumentUriUsingTree = DocumentsContract.buildDocumentUriUsingTree(uriChild, DocumentsContract.getTreeDocumentId(uriChild));
        File file = new File(str);
        String parent = file.getParent();
        if (parent != null && !parent.isEmpty()) {
            uriBuildDocumentUriUsingTree = createDirectory(context, uri, parent);
        }
        try {
            uriCreateDocument = DocumentsContract.createDocument(context.getContentResolver(), uriBuildDocumentUriUsingTree, "vnd.android.document/directory", file.getName());
        } catch (FileNotFoundException | SecurityException e) {
            CamLog.w("createDirectory() failed", e);
            uriCreateDocument = null;
        }
        return uriCreateDocument;
    }

    public static Uri existFile(Context context, Uri uri, String str) {
        Uri uriChild = child(uri, str);
        if (exists(context, uriChild)) {
            return uriChild;
        }
        return null;
    }

    private static Uri child(Uri uri, String str) {
        return DocumentsContract.buildDocumentUriUsingTree(uri, DocumentsContract.getTreeDocumentId(uri) + "/" + str);
    }

    public static boolean exists(Context context, Uri uri) throws Throwable {
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = context.getContentResolver().query(uri, null, null, null, null);
                if (cursorQuery != null) {
                    try {
                        boolean zMoveToNext = cursorQuery.moveToNext();
                        cursorQuery.close();
                        if (zMoveToNext) {
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            return true;
                        }
                    } catch (RuntimeException e) {
                        e = e;
                        cursor = cursorQuery;
                        CamLog.w("exists not found", e);
                        if (cursor == null) {
                            return false;
                        }
                        cursor.close();
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        cursor = cursorQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                if (cursorQuery == null) {
                    return false;
                }
                cursorQuery.close();
                return false;
            } catch (RuntimeException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static String getExt(Uri uri) {
        int iLastIndexOf;
        String documentName = getDocumentName(uri);
        return (TextUtils.isEmpty(documentName) || (iLastIndexOf = documentName.lastIndexOf(46)) < 0) ? "" : documentName.substring(iLastIndexOf + 1);
    }

    private static String getDocumentName(Uri uri) {
        File file = new File(DocumentsContract.getDocumentId(uri));
        if (file != null) {
            return file.getName();
        }
        return null;
    }

    public static String getPathAfterDcim(Uri uri, String str) {
        String string = uri.toString();
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        if (string.contains(Environment.DIRECTORY_DCIM)) {
            return str.split(Environment.DIRECTORY_DCIM + "/", 0)[1];
        }
        return str.substring(str.indexOf(Environment.DIRECTORY_DCIM));
    }

    public static boolean isExistDcimDirectory(Uri uri) {
        String string = uri.toString();
        return !TextUtils.isEmpty(string) && string.contains(Environment.DIRECTORY_DCIM);
    }

    public static Uri createDocumentSdCard(Context context, String str) {
        Uri sdCardGrantedUri = getSdCardGrantedUri(context);
        if (sdCardGrantedUri != null) {
            return createFile(context, sdCardGrantedUri, getPathAfterDcim(sdCardGrantedUri, str));
        }
        return null;
    }

    public static Uri searchDocumentSdCard(Context context, String str) {
        Uri sdCardGrantedUri = getSdCardGrantedUri(context);
        if (sdCardGrantedUri != null) {
            return existFile(context, sdCardGrantedUri, getPathAfterDcim(sdCardGrantedUri, str));
        }
        return null;
    }

    public static boolean isExistRemovableStorage(Context context) {
        for (File file : context.getExternalFilesDirs(null)) {
            if (file != null && Environment.isExternalStorageRemovable(file)) {
                return true;
            }
        }
        return false;
    }

    public static long getStorageMaximumFileSize(Context context, Storage$StorageType storage$StorageType) {
        long maxFileSize;
        if (storage$StorageType == Storage$StorageType.EXTERNAL_CARD) {
            String volumeUuid = getVolumeUuid(storage$StorageType, context);
            Iterator<StorageVolume> it = ((StorageManager) context.getSystemService("storage")).getStorageVolumes().iterator();
            while (it.hasNext()) {
                StorageVolumeWrapper storageVolumeWrapper = new StorageVolumeWrapper(it.next());
                if (volumeUuid.equals(storageVolumeWrapper.getUuid())) {
                    maxFileSize = storageVolumeWrapper.getMaxFileSize();
                    break;
                }
            }
            maxFileSize = Long.MAX_VALUE;
        } else {
            maxFileSize = Long.MAX_VALUE;
        }
        if (maxFileSize == 0) {
            maxFileSize = Long.MAX_VALUE;
        }
        if (CamLog.DEBUG) {
            CamLog.d("getStorageMaximumFileSize() maxFileSize: " + maxFileSize);
        }
        return maxFileSize;
    }
}
