package com.sonyericsson.cameracommon.mediasaving.updator;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.SystemClock;
import android.provider.MediaStore;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.contentsview.PhotoStackQueryHelper;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingResult;
import com.sonyericsson.cameracommon.storage.SavingRequest;
import com.sonyericsson.cameracommon.storage.Storage;
import com.sonyericsson.cameracommon.storage.StorageUtil;
import com.sonyericsson.cameracommon.storage.VideoSavingRequest;
import com.sonymobile.media.SomcMediaStore;
import java.io.File;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class MediaProviderUpdator {
    private static final Uri EXTENDED_FILES_CONTENT_URI = SomcMediaStore.ExtendedFiles.getContentUri("external");
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
            OnScanCompletedListener onScanCompletedListener = new OnScanCompletedListener(str);
            MediaScannerConnection.scanFile(this.mContext, new String[]{str}, null, onScanCompletedListener);
            return onScanCompletedListener.getScanResult();
        }
        CamLog.e("Illegal argument. scanFile is called with null.");
        return null;
    }

    private static class OnScanCompletedListener implements MediaScannerConnection.OnScanCompletedListener {
        private final CountDownLatch mLatch = new CountDownLatch(1);
        private Uri mScanResult;

        public OnScanCompletedListener(String str) {
        }

        @Override // android.media.MediaScannerConnection.OnScanCompletedListener
        public void onScanCompleted(String str, Uri uri) {
            if (CamLog.VERBOSE) {
                CamLog.d("onScanCompleted E");
            }
            if (CamLog.VERBOSE) {
                CamLog.d("  uri:" + uri);
            }
            if (CamLog.VERBOSE) {
                CamLog.d("  path:" + str);
            }
            this.mScanResult = uri;
            this.mLatch.countDown();
            if (CamLog.VERBOSE) {
                CamLog.d("onScanCompleted X");
            }
        }

        public Uri getScanResult() {
            try {
                if (CamLog.VERBOSE) {
                    CamLog.d("getScanResult wait 30 seconds...");
                }
                if (!this.mLatch.await(30000L, TimeUnit.MILLISECONDS)) {
                    CamLog.e("getScanResult is timeout.");
                }
            } catch (InterruptedException e) {
                CamLog.e("scan video file failed.", e);
            }
            if (CamLog.VERBOSE) {
                CamLog.d("getScanResult done. " + this.mScanResult);
            }
            return this.mScanResult;
        }
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
        SavingRequest savingRequest = videoSavingRequest;
        String filePath = savingRequest.getFilePath();
        if (filePath != null) {
            File file = new File(filePath);
            if (!file.exists() || !file.canRead()) {
                return null;
            }
            if (StorageUtil.getStorageTypeFromPath(filePath, this.mContext) != Storage.StorageType.EXTERNAL_CARD || (uriQueryVideoFromDatabase = queryVideoFromDatabase(filePath, this.mContext)) == null) {
                uriQueryVideoFromDatabase = insertVideoContentManager(videoSavingRequest);
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
        if (string.contains(MediaStore.Images.Media.getContentUri(VOLUME_EXTERNAL_PRIMARY).toString())) {
            context.sendBroadcast(new Intent("android.hardware.action.NEW_PICTURE", uri));
            return;
        }
        if (string.contains(MediaStore.Video.Media.getContentUri(VOLUME_EXTERNAL_PRIMARY).toString())) {
            context.sendBroadcast(new Intent("android.hardware.action.NEW_VIDEO", uri));
        } else if (CamLog.DEBUG) {
            CamLog.w("Invalid URI: " + uri);
        }
    }

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
            long currentTimeMillis = System.currentTimeMillis();
            while (System.currentTimeMillis() - currentTimeMillis < TIME_OUT_QUERY_IN_MILLI) {
                Cursor cursor = PhotoStackQueryHelper.crQuery(contentResolver, EXTENDED_FILES_CONTENT_URI, crQueryParameter);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            String string = cursor.getString(cursor.getColumnIndex("_id"));
                            uri = Uri.withAppendedPath(Uri.parse("content://media/external/video/media"), "" + string);
                        }
                    } finally {
                        cursor.close();
                    }
                    if (uri != null) {
                        mediaSavingResult = MediaSavingResult.SUCCESS;
                        break;
                    }
                }
                SystemClock.sleep(TIME_INTERVAL_QUERY_IN_MILLI);
                if (CamLog.DEBUG) {
                    CamLog.e("Failed to query video:" + System.currentTimeMillis());
                }
            }
        }
        if (uri != null) {
            mediaSavingResult = MediaSavingResult.SUCCESS;
        }
        if (mediaSavingResult != MediaSavingResult.SUCCESS && CamLog.DEBUG) {
            CamLog.e("Failed to query video:" + mediaSavingResult);
        }
        if (CamLog.DEBUG) {
            CamLog.d("queryVideoFromDatabase: result: " + uri);
        }
        return uri;
    }

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
            long currentTimeMillis = System.currentTimeMillis();
            while (System.currentTimeMillis() - currentTimeMillis < TIME_OUT_QUERY_IN_MILLI) {
                Cursor cursor = PhotoStackQueryHelper.crQuery(contentResolver, EXTENDED_FILES_CONTENT_URI, crQueryParameter);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            String string = cursor.getString(cursor.getColumnIndex("_id"));
                            uri = Uri.withAppendedPath(Uri.parse("content://media/external/images/media"), "" + string);
                        }
                    } finally {
                        cursor.close();
                    }
                    if (uri != null) {
                        mediaSavingResult = MediaSavingResult.SUCCESS;
                        break;
                    }
                }
                SystemClock.sleep(TIME_INTERVAL_QUERY_IN_MILLI);
                if (CamLog.DEBUG) {
                    CamLog.e("Failed to query:" + System.currentTimeMillis());
                }
            }
        }
        if (uri != null) {
            mediaSavingResult = MediaSavingResult.SUCCESS;
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
