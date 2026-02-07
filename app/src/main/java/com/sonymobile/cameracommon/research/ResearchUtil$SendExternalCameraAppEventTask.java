package com.sonymobile.cameracommon.research;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.sonymobile.cameracommon.research.idd.IddUtil;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class ResearchUtil$SendExternalCameraAppEventTask implements Runnable {
    private final Context mContext;
    private final String mModeTo;
    private final Uri mUri;

    /* synthetic */ ResearchUtil$SendExternalCameraAppEventTask(Context context, Uri uri, String str, ResearchUtil$1 researchUtil$1) {
        this(context, uri, str);
    }

    private ResearchUtil$SendExternalCameraAppEventTask(Context context, Uri uri, String str) {
        this.mContext = context;
        this.mUri = uri;
        this.mModeTo = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        ContentResolver contentResolver;
        Uri uri;
        StringBuilder sb;
        Cursor cursorQuery = this.mContext.getContentResolver().query(this.mUri, null, null, null, null);
        if (cursorQuery != null) {
            if (cursorQuery.moveToFirst()) {
                do {
                    try {
                        try {
                            String string = cursorQuery.getString(cursorQuery.getColumnIndex("data"));
                            long j = cursorQuery.getLong(cursorQuery.getColumnIndex("created_at"));
                            JSONObject jSONObject = new JSONObject(string);
                            if (this.mModeTo != null) {
                                jSONObject.put("to", this.mModeTo);
                            }
                            IddUtil.sendExternalCameraAppEvent(jSONObject, j);
                            contentResolver = this.mContext.getContentResolver();
                            uri = this.mUri;
                            sb = new StringBuilder();
                        } catch (JSONException e) {
                            e.printStackTrace();
                            contentResolver = this.mContext.getContentResolver();
                            uri = this.mUri;
                            sb = new StringBuilder();
                        }
                        sb.append("_id = ");
                        sb.append(cursorQuery.getInt(cursorQuery.getColumnIndex("_id")));
                        contentResolver.delete(uri, sb.toString(), null);
                    } catch (Throwable th) {
                        this.mContext.getContentResolver().delete(this.mUri, "_id = " + cursorQuery.getInt(cursorQuery.getColumnIndex("_id")), null);
                        throw th;
                    }
                } while (cursorQuery.moveToNext());
            }
            cursorQuery.close();
        }
    }
}
