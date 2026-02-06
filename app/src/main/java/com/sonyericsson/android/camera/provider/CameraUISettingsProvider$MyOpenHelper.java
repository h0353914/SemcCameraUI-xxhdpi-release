package com.sonyericsson.android.camera.provider;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase$CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;
import com.sonyericsson.android.camera.util.CamLog;

class CameraUISettingsProvider$MyOpenHelper extends SQLiteOpenHelper {
    private final Context mContext;

    public CameraUISettingsProvider$MyOpenHelper(Context context, String str) {
        super(context, str, (SQLiteDatabase$CursorFactory) null, 5);
        this.mContext = context;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        if (existTable(sQLiteDatabase, "capturingmodes")) {
            return;
        }
        createCapturingModeTable(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (CamLog.VERBOSE) {
            CamLog.d("onUpgrade()");
            CamLog.d("  oldVersion:" + i);
            CamLog.d("  newVersion:" + i2);
        }
        deleteTables(sQLiteDatabase);
        createCapturingModeTable(sQLiteDatabase);
    }

    static void createCapturingModeTable(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE capturingmodes (_id INTEGER PRIMARY KEY AUTOINCREMENT,package TEXT, activity TEXT, mode_name TEXT, capture_type INTEGER, visibility_normal INTEGER, visibility_oneshot INTEGER, visibility_shortcut INTEGER, sort_order INTEGER, selectorlabel_id INTEGER, selectoricon_id INTEGER, shortcutlabel_id INTEGER, shortcuticon_id INTEGER, descriptionlabel_id INTEGER, UNIQUE(package,mode_name));");
    }

    static void deleteTables(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS capturingmodes");
    }

    static boolean existTable(SQLiteDatabase sQLiteDatabase, String str) throws Throwable {
        Cursor cursor = null;
        try {
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT name FROM sqlite_master WHERE type='table' AND name='" + str + "'", null);
            if (cursorRawQuery != null) {
                try {
                    if (cursorRawQuery.getCount() > 0) {
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        return true;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorRawQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursorRawQuery == null) {
                return false;
            }
            cursorRawQuery.close();
            return false;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
