package com.sonyericsson.cameracommon.storage;

import android.graphics.Bitmap;
import android.net.Uri;
import com.sonyericsson.cameracommon.contentsview.contents.Content$ContentInfo;
import java.util.LinkedList;

public interface Storage$OnLoadCompletedListener {
    void onDataLoadCompleted(int i, boolean z, LinkedList<Content$ContentInfo> linkedList, Bitmap bitmap);

    void onDataLoadFailed(int i);

    void onLoadCompleted(Uri uri, Bitmap bitmap);

    void onLoadFailed(Uri uri, int i);
}
