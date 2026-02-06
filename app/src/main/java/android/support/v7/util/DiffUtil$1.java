package android.support.v7.util;

import java.util.Comparator;

class DiffUtil$1 implements Comparator<DiffUtil$Snake> {
    DiffUtil$1() {
    }

    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(DiffUtil$Snake diffUtil$Snake, DiffUtil$Snake diffUtil$Snake2) {
        return compare2(diffUtil$Snake, diffUtil$Snake2);
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(DiffUtil$Snake diffUtil$Snake, DiffUtil$Snake diffUtil$Snake2) {
        int i = diffUtil$Snake.x - diffUtil$Snake2.x;
        return i == 0 ? diffUtil$Snake.y - diffUtil$Snake2.y : i;
    }
}
