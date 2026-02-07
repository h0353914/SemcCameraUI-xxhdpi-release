package com.sonyericsson.cameracommon.storage;

import android.graphics.Bitmap;
import com.sonyericsson.cameracommon.contentsview.contents.Content$ContentInfo;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
public interface DataLoader$DataLoadCallback {
    void onDataLoaded(boolean z, LinkedList<Content$ContentInfo> linkedList, int i, boolean z2, Bitmap bitmap);
}
