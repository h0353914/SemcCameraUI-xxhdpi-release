package com.google.android.gms.common.data;

import android.os.Bundle;
import com.sonyericsson.android.camera.view.modeselector.CapturingModeUtil;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: /home/h/tmp/SemcCameraUI-xxhdpi-release/SemcCameraUI-xxhdpi-release/build/apk/classes.dex */
public final class DataBufferUtils {
    private DataBufferUtils() {
    }

    public static <T, E extends Freezable<T>> ArrayList<T> freezeAndClose(DataBuffer<E> dataBuffer) {
        ArrayList<T> arrayList = new ArrayList<>(dataBuffer.getCount());
        try {
            Iterator<E> it = dataBuffer.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().freeze());
            }
            return arrayList;
        } finally {
            dataBuffer.close();
        }
    }

    public static boolean hasData(DataBuffer<?> dataBuffer) {
        return dataBuffer != null && dataBuffer.getCount() > 0;
    }

    public static boolean hasNextPage(DataBuffer<?> dataBuffer) {
        Bundle bundleZzor = dataBuffer.zzor();
        return (bundleZzor == null || bundleZzor.getString("next_page_token") == null) ? false : true;
    }

    public static boolean hasPrevPage(DataBuffer<?> dataBuffer) {
        Bundle bundleZzor = dataBuffer.zzor();
        return (bundleZzor == null || bundleZzor.getString("prev_page_token") == null) ? false : true;
    }
}
