package com.sonyericsson.cameracommon.mediasaving.updator;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.SystemClock;
import android.provider.MediaStore$Images$Media;
import android.provider.MediaStore$Video$Media;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.contentsview.PhotoStackQueryHelper;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingResult;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;
import com.sonyericsson.cameracommon.storage.StorageUtil;
import com.sonyericsson.cameracommon.storage.VideoSavingRequest;
import java.io.File;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class MediaProviderUpdator {
    private static final Uri EXTENDED_FILES_CONTENT_URI = Uri.parse("content://media/external/file");
    public static final String TAG = "MediaProviderUpdator";
    private static final int TIME_INTERVAL_QUERY_IN_MILLI = 200;
    private static final int TIME_OUT_QUERY_IN_MILLI = 1000;
    private static final int TIME_OUT_SCANNER_IN_MILLI = 30000;
    private static final String VOLUME_EXTERNAL_PRIMARY = "external_primary";
    protected Context mContext;

    public MediaProviderUpdator(Context context) {
        this.mContext = null;
        this.mContext = context;
    }

    private synchronized Uri scanFile(String str) {
        if (CamLog.VERBOSE) {
            CamLog.d("scanFile() is called. Path is : " + str);
        }
        if (str != null) {
            MediaProviderUpdator$OnScanCompletedListener mediaProviderUpdator$OnScanCompletedListener = new MediaProviderUpdator$OnScanCompletedListener(str);
            MediaScannerConnection.scanFile(this.mContext, new String[]{str}, null, mediaProviderUpdator$OnScanCompletedListener);
            return mediaProviderUpdator$OnScanCompletedListener.getScanResult();
        }
        CamLog.e("Illegal argument. scanFile is called with null.");
        return null;
    }

    private Uri insertVideoContentManager(VideoSavingRequest videoSavingRequest) {
        String filePath = videoSavingRequest.getFilePath();
        if (CamLog.VERBOSE) {
            CamLog.d("insertVideoContentManager: " + filePath);
        }
        Uri uriScanFile = scanFile(filePath);
        if (CamLog.VERBOSE) {
            CamLog.d("insertVideoContentManager: result: " + uriScanFile);
        }
        return uriScanFile;
    }

    public Uri insertVideoAndSendIntent(VideoSavingRequest videoSavingRequest) {
        MediaSavingResult mediaSavingResult = MediaSavingResult.FAIL;
        Uri uriQueryVideoFromDatabase = Uri.EMPTY;
        String filePath = videoSavingRequest.getFilePath();
        if (filePath != null) {
            File file = new File(filePath);
            if (!file.exists() || !file.canRead()) {
                return null;
            }
            if (StorageUtil.getStorageTypeFromPath(filePath, this.mContext) != Storage$StorageType.EXTERNAL_CARD || (uriQueryVideoFromDatabase = queryVideoFromDatabase(filePath, this.mContext)) == null) {
                Uri uriInsertVideoContentManager = insertVideoContentManager(videoSavingRequest);
                uriQueryVideoFromDatabase = uriInsertVideoContentManager;
            }
            if (uriQueryVideoFromDatabase != null) {
                mediaSavingResult = MediaSavingResult.SUCCESS;
            }
        }
        if (mediaSavingResult != MediaSavingResult.SUCCESS) {
            CamLog.e("Failed to inserting a video:" + mediaSavingResult);
        }
        if (CamLog.VERBOSE) {
            CamLog.d("insertVideoAndSendIntent: result: " + uriQueryVideoFromDatabase);
        }
        return uriQueryVideoFromDatabase;
    }

    public static void sendBroadcastCameraShot(Context context, Uri uri) {
        if (CamLog.DEBUG) {
            CamLog.d("sendBroadcastCameraShot: " + uri);
        }
        if (uri == null) {
            return;
        }
        if (context == null) {
            if (CamLog.DEBUG) {
                CamLog.d("Activity has already finished.");
                return;
            }
            return;
        }
        String string = uri.toString();
        if (string.contains(MediaStore$Images$Media.getContentUri("external_primary").toString())) {
            context.sendBroadcast(new Intent("android.hardware.action.NEW_PICTURE", uri));
            return;
        }
        if (string.contains(MediaStore$Video$Media.getContentUri("external_primary").toString())) {
            context.sendBroadcast(new Intent("android.hardware.action.NEW_VIDEO", uri));
        } else if (CamLog.DEBUG) {
            CamLog.w("Invalid URI: " + uri);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x008f, code lost:
    
        r12 = r11.getString(r11.getColumnIndex("_id"));
        r12 = android.net.Uri.withAppendedPath(android.net.Uri.parse("content://media/external/video/media"), "" + r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00b4, code lost:
    
        r11.close();
        r3 = r12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Uri queryVideoFromDatabase(String str, Context context) {
        if (CamLog.DEBUG) {
            CamLog.d("queryVideoFromDatabase: start: " + str);
        }
        MediaSavingResult mediaSavingResult = MediaSavingResult.FAIL;
        Uri uri = null;
        if (str != null && context != null) {
            File file = new File(str);
            if (!file.exists() || !file.canRead()) {
                return null;
            }
            ContentResolver contentResolver = context.getContentResolver();
            CrQueryParameter crQueryParameter = new CrQueryParameter();
            crQueryParameter.projection = new String[]{"_id", "_data"};
            crQueryParameter.sortOrder = String.format(Locale.US, "%s DESC, %s DESC", "datetaken", "_id");
            crQueryParameter.where = String.format(Locale.US, "%s like '%s'", "_data", str);
            long jCurrentTimeMillis = System.currentTimeMillis();
            while (true) {
                if (System.currentTimeMillis() - jCurrentTimeMillis >= 1000) {
                    break;
                }
                Cursor cursorCrQuery = PhotoStackQueryHelper.crQuery(contentResolver, EXTENDED_FILES_CONTENT_URI, crQueryParameter);
                if (cursorCrQuery != null) {
                    try {
                        if (cursorCrQuery.moveToFirst()) {
                            break;
                        }
                    } finally {
                        cursorCrQuery.close();
                    }
                }
                SystemClock.sleep(200L);
                if (CamLog.DEBUG) {
                    CamLog.e("Failed to query video:" + System.currentTimeMillis());
                }
            }
            if (uri != null) {
                mediaSavingResult = MediaSavingResult.SUCCESS;
            }
        }
        if (mediaSavingResult != MediaSavingResult.SUCCESS && CamLog.DEBUG) {
            CamLog.e("Failed to query video:" + mediaSavingResult);
        }
        if (CamLog.DEBUG) {
            CamLog.d("queryVideoFromDatabase: result: " + uri);
        }
        return uri;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x008f, code lost:
    
        r12 = r11.getString(r11.getColumnIndex("_id"));
        r12 = android.net.Uri.withAppendedPath(android.net.Uri.parse("content://media/external/images/media"), "" + r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00b4, code lost:
    
        r11.close();
        r3 = r12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Uri queryPhotoFromDatabase(String str, Context context) {
        if (CamLog.DEBUG) {
            CamLog.d("queryPhotoFromDatabase: start: " + str);
        }
        MediaSavingResult mediaSavingResult = MediaSavingResult.FAIL;
        Uri uri = null;
        if (str != null && context != null) {
            File file = new File(str);
            if (!file.exists() || !file.canRead()) {
                return null;
            }
            ContentResolver contentResolver = context.getContentResolver();
            CrQueryParameter crQueryParameter = new CrQueryParameter();
            crQueryParameter.projection = new String[]{"_id", "_data"};
            crQueryParameter.sortOrder = String.format(Locale.US, "%s DESC, %s DESC", "datetaken", "_id");
            crQueryParameter.where = String.format(Locale.US, "%s like '%s'", "_data", str);
            long jCurrentTimeMillis = System.currentTimeMillis();
            while (true) {
                if (System.currentTimeMillis() - jCurrentTimeMillis >= 1000) {
                    break;
                }
                Cursor cursorCrQuery = PhotoStackQueryHelper.crQuery(contentResolver, EXTENDED_FILES_CONTENT_URI, crQueryParameter);
                if (cursorCrQuery != null) {
                    try {
                        if (cursorCrQuery.moveToFirst()) {
                            break;
                        }
                    } finally {
                        cursorCrQuery.close();
                    }
                }
                SystemClock.sleep(200L);
                if (CamLog.DEBUG) {
                    CamLog.e("Failed to query:" + System.currentTimeMillis());
                }
            }
            if (uri != null) {
                mediaSavingResult = MediaSavingResult.SUCCESS;
            }
        }
        if (mediaSavingResult != MediaSavingResult.SUCCESS && CamLog.DEBUG) {
            CamLog.e("Failed to query photo:" + mediaSavingResult);
        }
        if (CamLog.DEBUG) {
            CamLog.d("queryPhotoFromDatabase: result: " + uri);
        }
        return uri;
    }
}
