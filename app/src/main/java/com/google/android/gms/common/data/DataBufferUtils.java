package com.google.android.gms.common.data;

import android.os.Bundle;
import com.sonyericsson.android.camera.view.modeselector.CapturingModeUtil$1;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class DataBufferUtils {
    private DataBufferUtils() {
    }

    public static <T, E extends Freezable<T>> ArrayList<T> freezeAndClose(DataBuffer<E> dataBuffer) {
        CapturingModeUtil$1 capturingModeUtil$1 = (ArrayList<T>) new ArrayList(dataBuffer.getCount());
        try {
            Iterator<E> it = dataBuffer.iterator();
            while (it.hasNext()) {
                capturingModeUtil$1.add(it.next().freeze());
            }
            return capturingModeUtil$1;
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
