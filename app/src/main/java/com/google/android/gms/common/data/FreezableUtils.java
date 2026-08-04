package com.google.android.gms.common.data;

import com.sonyericsson.android.camera.view.modeselector.CapturingModeUtil;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: /home/h/tmp/SemcCameraUI-xxhdpi-release/SemcCameraUI-xxhdpi-release/build/apk/classes.dex */
public final class FreezableUtils {
    public static <T, E extends Freezable<T>> ArrayList<T> freeze(ArrayList<E> arrayList) {
        ArrayList<T> arrayList2 = new ArrayList<>(arrayList.size());
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList2.add(arrayList.get(i).freeze());
        }
        return arrayList2;
    }

    public static <T, E extends Freezable<T>> ArrayList<T> freeze(E[] eArr) {
        ArrayList<T> arrayList = new ArrayList<>(eArr.length);
        for (E e : eArr) {
            arrayList.add(e.freeze());
        }
        return arrayList;
    }

    public static <T, E extends Freezable<T>> ArrayList<T> freezeIterable(Iterable<E> iterable) {
        ArrayList<T> arrayList = new ArrayList<>();
        Iterator<E> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().freeze());
        }
        return arrayList;
    }
}
