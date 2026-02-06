package com.sonyericsson.android.camera.provider;

import android.content.ContentProvider;
import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentValues;
import android.content.OperationApplicationException;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;
import android.util.SparseArray;
import com.sonyericsson.android.camera.util.CamLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

public class CameraUISettingsProvider extends ContentProvider {
    private static final String AUTHORITY = "com.sonymobile.camerauicommon.provider";
    private static final String CAMERA_UI_AUTHORITY = "com.sonymobile.camerauicommon.provider";
    private static final String DATABASE_NAME = "cameraui.db";
    private static final int DATABASE_VERSION = 5;
    private static final String DIR_TYPE_BASE = "vnd.android.cursor.dir/";
    private static final String ITEM_TYPE_BASE = "vnd.android.cursor.item/";
    private static final String TAG = "CameraUISettingsProvider";
    private SQLiteOpenHelper mOpenHelper;
    int mProcessingBatchCount = 0;
    private static final SparseArray<String> MIMETYPE_LIST = new SparseArray<>();
    private static final UriMatcher URI_MATCHER = new UriMatcher(-1);

    protected String getDataBaseName() {
        return "cameraui.db";
    }

    static {
        URI_MATCHER.addURI("com.sonymobile.camerauicommon.provider", "capturingmodes", 1);
        URI_MATCHER.addURI("com.sonymobile.camerauicommon.provider", "capturingmodes/#", 2);
        MIMETYPE_LIST.put(1, "vnd.android.cursor.dir/capturingmode");
        MIMETYPE_LIST.put(2, "vnd.android.cursor.item/capturingmode");
    }

    void incrementProcessingBatchCount() {
        synchronized (this) {
            this.mProcessingBatchCount++;
        }
    }

    void decrementProcessingBatchCount() {
        synchronized (this) {
            this.mProcessingBatchCount--;
        }
    }

    private boolean isProcessingBatch() {
        boolean z;
        synchronized (this) {
            z = this.mProcessingBatchCount > 0;
        }
        return z;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.mOpenHelper = new CameraUISettingsProvider$MyOpenHelper(getContext(), getDataBaseName());
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        if (CamLog.VERBOSE) {
            in(uri);
        }
        Cursor cursorQuery = this.mOpenHelper.getReadableDatabase().query(getTableName(uri), strArr, str, strArr2, null, null, str2);
        if (CamLog.VERBOSE) {
            out();
        }
        return cursorQuery;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        if (CamLog.VERBOSE) {
            in(uri);
        }
        if (CamLog.VERBOSE) {
            CamLog.d("insert uri:" + uri + " values:" + contentValues);
        }
        Uri uriWithAppendedPath = null;
        long jInsert = this.mOpenHelper.getWritableDatabase().insert(getTableName(uri), null, contentValues);
        if (jInsert != -1) {
            uriWithAppendedPath = Uri.withAppendedPath(uri, String.valueOf(jInsert));
            if (!isProcessingBatch()) {
                onCompleteOperation(uri);
            }
        }
        if (CamLog.VERBOSE) {
            out();
        }
        return uriWithAppendedPath;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        if (CamLog.VERBOSE) {
            in(uri);
        }
        if (CamLog.VERBOSE) {
            CamLog.d("delete uri:" + uri.toString() + " selection:" + str + " arguments:" + Arrays.toString(strArr));
        }
        int iDelete = this.mOpenHelper.getWritableDatabase().delete(getTableName(uri), str, strArr);
        if (iDelete > 0 && !isProcessingBatch()) {
            onCompleteOperation(uri);
        }
        if (CamLog.VERBOSE) {
            out();
        }
        return iDelete;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        int iUpdate;
        if (CamLog.VERBOSE) {
            in(uri);
        }
        SQLiteDatabase writableDatabase = this.mOpenHelper.getWritableDatabase();
        String tableName = getTableName(uri);
        if (str != null) {
            try {
                iUpdate = writableDatabase.update(tableName, contentValues, str, strArr);
                if (iUpdate > 0) {
                    try {
                        if (!isProcessingBatch()) {
                            onCompleteOperation(uri);
                        }
                    } catch (SQLiteConstraintException e) {
                        e = e;
                        CamLog.e("Failed to update the record. Message : " + e.getMessage());
                    }
                }
            } catch (SQLiteConstraintException e2) {
                e = e2;
                iUpdate = 0;
            }
        } else if (writableDatabase.replace(getTableName(uri), null, contentValues) != -1) {
            if (!isProcessingBatch()) {
                onCompleteOperation(uri);
            }
            iUpdate = 1;
        } else {
            iUpdate = 0;
        }
        if (CamLog.VERBOSE) {
            out();
        }
        return iUpdate;
    }

    @Override // android.content.ContentProvider
    public ContentProviderResult[] applyBatch(ArrayList<ContentProviderOperation> arrayList) throws OperationApplicationException {
        if (CamLog.VERBOSE) {
            in(null);
        }
        incrementProcessingBatchCount();
        ContentProviderResult[] contentProviderResultArrApplyBatch = super.applyBatch(arrayList);
        decrementProcessingBatchCount();
        HashSet hashSet = new HashSet();
        for (ContentProviderOperation contentProviderOperation : arrayList) {
            if (contentProviderOperation.getUri() != null) {
                hashSet.add(contentProviderOperation.getUri());
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            onCompleteOperation((Uri) it.next());
        }
        if (CamLog.VERBOSE) {
            out();
        }
        return contentProviderResultArrApplyBatch;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return MIMETYPE_LIST.get(URI_MATCHER.match(uri));
    }

    private String getTableName(Uri uri) {
        if (URI_MATCHER.match(uri) == 1) {
            return "capturingmodes";
        }
        throw new SQLException("Invalid uri for this content provider. uri:" + uri);
    }

    private void onCompleteOperation(Uri uri) {
        boolean z;
        if (CamLog.VERBOSE) {
            in(uri);
        }
        if (uri == null) {
            if (z) {
                return;
            } else {
                return;
            }
        }
        try {
            if (CamLog.VERBOSE) {
                debug("notify changes uri:" + uri);
            }
            getContext().getContentResolver().notifyChange(uri, null);
            if (CamLog.VERBOSE) {
                out();
            }
        } finally {
            if (CamLog.VERBOSE) {
                out();
            }
        }
    }

    private int getCountOf(String str) {
        Cursor cursorQuery = this.mOpenHelper.getReadableDatabase().query(str, new String[0], null, null, null, null, null);
        if (cursorQuery == null) {
            return 0;
        }
        int count = cursorQuery.getCount();
        cursorQuery.close();
        return count;
    }

    private void in(Uri uri) {
        String methodName = Thread.currentThread().getStackTrace()[3].getMethodName();
        long id = Thread.currentThread().getId();
        if (CamLog.DEBUG) {
            CamLog.d("### [" + id + "]" + methodName + "() --> start #" + uri);
        }
    }

    private void out() {
        String methodName = Thread.currentThread().getStackTrace()[3].getMethodName();
        long id = Thread.currentThread().getId();
        if (CamLog.DEBUG) {
            CamLog.d("### [" + id + "]" + methodName + "() --> end");
        }
    }

    private void debug(String str) {
        String methodName = Thread.currentThread().getStackTrace()[3].getMethodName();
        long id = Thread.currentThread().getId();
        if (CamLog.DEBUG) {
            CamLog.d("### [" + id + "]" + methodName + "() " + str);
        }
    }
}
