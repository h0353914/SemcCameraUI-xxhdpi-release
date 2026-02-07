package com.google.android.gms.common.data;

import com.sonyericsson.android.camera.view.modeselector.CapturingModeUtil$1;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class FreezableUtils {
    public static <T, E extends Freezable<T>> ArrayList<T> freeze(ArrayList<E> arrayList) {
        CapturingModeUtil$1 capturingModeUtil$1 = (ArrayList<T>) new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            capturingModeUtil$1.add(arrayList.get(i).freeze());
        }
        return capturingModeUtil$1;
    }

    public static <T, E extends Freezable<T>> ArrayList<T> freeze(E[] eArr) {
        CapturingModeUtil$1 capturingModeUtil$1 = (ArrayList<T>) new ArrayList(eArr.length);
        for (E e : eArr) {
            capturingModeUtil$1.add(e.freeze());
        }
        return capturingModeUtil$1;
    }

    public static <T, E extends Freezable<T>> ArrayList<T> freezeIterable(Iterable<E> iterable) {
        CapturingModeUtil$1 capturingModeUtil$1 = (ArrayList<T>) new ArrayList();
        Iterator<E> it = iterable.iterator();
        while (it.hasNext()) {
            capturingModeUtil$1.add(it.next().freeze());
        }
        return capturingModeUtil$1;
    }
}
