package com.google.android.apps.lens.library.base;

import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
class LensSdkParamsReader$QueryGsaTask extends AsyncTask<Void, Void, Integer> {
    final /* synthetic */ LensSdkParamsReader this$0;

    private LensSdkParamsReader$QueryGsaTask(final LensSdkParamsReader this$0) {
        this.this$0 = this$0;
    }

    /* synthetic */ LensSdkParamsReader$QueryGsaTask(LensSdkParamsReader lensSdkParamsReader, LensSdkParamsReader$1 lensSdkParamsReader$1) {
        this(lensSdkParamsReader);
    }

    @Override // android.os.AsyncTask
    protected /* bridge */ /* synthetic */ Integer doInBackground(Void[] params) {
        return doInBackground2(params);
    }

    @Override // android.os.AsyncTask
    protected /* bridge */ /* synthetic */ void onPostExecute(Integer status) {
        onPostExecute2(status);
    }

    /* JADX INFO: renamed from: doInBackground, reason: avoid collision after fix types in other method */
    protected Integer doInBackground2(Void... params) throws Throwable {
        Cursor cursor = null;
        try {
            Cursor cursorQuery = LensSdkParamsReader.access$100(this.this$0).getContentResolver().query(Uri.parse(LensSdkParamsReader.LENS_AVAILABILITY_PROVIDER_URI), null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.getCount() != 0) {
                        cursorQuery.moveToFirst();
                        int i = Integer.parseInt(cursorQuery.getString(0));
                        if (i > 6) {
                            i = 6;
                        }
                        Integer numValueOf = Integer.valueOf(i);
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return numValueOf;
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
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return 4;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: renamed from: onPostExecute, reason: avoid collision after fix types in other method */
    protected void onPostExecute2(Integer status) {
        String strValueOf = String.valueOf(status);
        StringBuilder sb = new StringBuilder(25 + String.valueOf(strValueOf).length());
        sb.append("Lens availability result:");
        sb.append(strValueOf);
        Log.i("LensSdkParamsReader", sb.toString());
        LensSdkParamsReader.access$200(this.this$0).lensAvailabilityStatus = status.intValue();
        LensSdkParamsReader.access$302(this.this$0, true);
        Iterator it = LensSdkParamsReader.access$400(this.this$0).iterator();
        while (it.hasNext()) {
            ((LensSdkParamsReader$LensSdkParamsCallback) it.next()).onLensSdkParamsAvailable(LensSdkParamsReader.access$200(this.this$0));
        }
        LensSdkParamsReader.access$400(this.this$0).clear();
    }
}
