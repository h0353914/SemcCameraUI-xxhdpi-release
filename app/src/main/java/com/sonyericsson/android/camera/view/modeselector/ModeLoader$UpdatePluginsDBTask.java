package com.sonyericsson.android.camera.view.modeselector;

import android.content.Context;
import android.os.AsyncTask;

/* JADX INFO: loaded from: classes.dex */
class ModeLoader$UpdatePluginsDBTask extends AsyncTask<Void, Void, Void> {
    private static final String THREAD_NAME = "PluginsDBTask";
    private Context mContext;

    /* JADX INFO: renamed from: onPostExecute, reason: avoid collision after fix types in other method */
    protected void onPostExecute2(Void r1) {
    }

    @Override // android.os.AsyncTask
    protected /* bridge */ /* synthetic */ Void doInBackground(Void[] voidArr) {
        return doInBackground2(voidArr);
    }

    @Override // android.os.AsyncTask
    protected /* bridge */ /* synthetic */ void onPostExecute(Void r1) {
        onPostExecute2(r1);
    }

    public ModeLoader$UpdatePluginsDBTask(Context context) {
        this.mContext = context;
    }

    /* JADX INFO: renamed from: doInBackground, reason: avoid collision after fix types in other method */
    protected Void doInBackground2(Void... voidArr) {
        Thread.currentThread().setName("PluginsDBTask");
        new CapturingModePluginsPMLoader(this.mContext).updatePluginsInDB();
        return null;
    }
}
