package com.sonyericsson.android.camera.view.modeselector;

import android.os.AsyncTask;
import com.sonyericsson.android.camera.util.CamLog;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class CapturingModeListLoader$GetCapturingModeListTask extends AsyncTask<Void, Void, List<CapturingModeAttributes>> {
    private static final String THREAD_NAME = "GetModeListTask";
    private final WeakReference<CapturingModeListLoader> mCapturingModeListLoaderRef;

    @Override // android.os.AsyncTask
    public /* bridge */ /* synthetic */ List<CapturingModeAttributes> doInBackground(Void[] voidArr) {
        return doInBackground2(voidArr);
    }

    @Override // android.os.AsyncTask
    public /* bridge */ /* synthetic */ void onPostExecute(List<CapturingModeAttributes> list) {
        onPostExecute2(list);
    }

    CapturingModeListLoader$GetCapturingModeListTask(CapturingModeListLoader capturingModeListLoader) {
        this.mCapturingModeListLoaderRef = new WeakReference<>(capturingModeListLoader);
    }

    /* JADX INFO: renamed from: doInBackground, reason: avoid collision after fix types in other method */
    public List<CapturingModeAttributes> doInBackground2(Void... voidArr) {
        Thread.currentThread().setName("GetModeListTask");
        CapturingModeListLoader capturingModeListLoader = this.mCapturingModeListLoaderRef.get();
        if (capturingModeListLoader == null) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        List<CapturingModeAttributes> capturingModeList = CapturingModeListLoader.access$200(capturingModeListLoader).getCapturingModeList(CapturingModeListLoader.access$000(capturingModeListLoader), new CapturingModeAttributes$VisibilityType[]{CapturingModeListLoader.access$100(capturingModeListLoader)});
        CamLog.i("Mode query takes " + (System.currentTimeMillis() - jCurrentTimeMillis) + " [ms]");
        List<CapturingModeAttributes> listAccess$300 = CapturingModeListLoader.access$300(capturingModeListLoader, capturingModeList);
        listAccess$300.addAll(CapturingModeListLoader.access$400(capturingModeListLoader));
        if (CamLog.VERBOSE) {
            CamLog.d("onCapturingModeGroupChanged count: " + listAccess$300.size());
        }
        return sortCapturingModeList(listAccess$300);
    }

    private List<CapturingModeAttributes> sortCapturingModeList(List<CapturingModeAttributes> list) {
        ArrayList arrayList = new ArrayList();
        for (CapturingModeListLoader$CapturingModeId capturingModeListLoader$CapturingModeId : CapturingModeListLoader$CapturingModeId.values()) {
            Iterator<CapturingModeAttributes> it = list.iterator();
            while (true) {
                if (it.hasNext()) {
                    CapturingModeAttributes next = it.next();
                    if (next.getModeName().equals(capturingModeListLoader$CapturingModeId.getName())) {
                        arrayList.add(next);
                        list.remove(next);
                        break;
                    }
                }
            }
        }
        if (!list.isEmpty()) {
            arrayList.addAll(arrayList.size(), list);
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: onPostExecute, reason: avoid collision after fix types in other method */
    public void onPostExecute2(List<CapturingModeAttributes> list) {
        CapturingModeListLoader capturingModeListLoader = this.mCapturingModeListLoaderRef.get();
        if (capturingModeListLoader == null) {
            return;
        }
        CapturingModeListLoader.access$500(capturingModeListLoader).clear();
        CapturingModeListLoader.access$500(capturingModeListLoader).addAll(list);
        CapturingModeListLoader.access$600(capturingModeListLoader).onCapturingModeListChanged(CapturingModeListLoader.access$500(capturingModeListLoader));
    }
}
