package com.sonyericsson.cameracommon.storage;

import android.graphics.Bitmap;
import com.sonyericsson.cameracommon.contentsview.contents.Content$ContentInfo;
import java.util.LinkedList;

public interface DataLoader$DataLoadCallback {
    void onDataLoaded(boolean z, LinkedList<Content$ContentInfo> linkedList, int i, boolean z2, Bitmap bitmap);
}
