package android.support.v7.widget;

import java.util.List;

class OpReorderer {
    final OpReorderer$Callback mCallback;

    OpReorderer(OpReorderer$Callback opReorderer$Callback) {
        this.mCallback = opReorderer$Callback;
    }

    void reorderOps(List<AdapterHelper$UpdateOp> list) {
        while (true) {
            int lastMoveOutOfOrder = getLastMoveOutOfOrder(list);
            if (lastMoveOutOfOrder == -1) {
                return;
            } else {
                swapMoveOp(list, lastMoveOutOfOrder, lastMoveOutOfOrder + 1);
            }
        }
    }

    private void swapMoveOp(List<AdapterHelper$UpdateOp> list, int i, int i2) {
        AdapterHelper$UpdateOp adapterHelper$UpdateOp = list.get(i);
        AdapterHelper$UpdateOp adapterHelper$UpdateOp2 = list.get(i2);
        int i3 = adapterHelper$UpdateOp2.cmd;
        if (i3 != 4) {
            switch (i3) {
                case 1:
                    swapMoveAdd(list, i, adapterHelper$UpdateOp, i2, adapterHelper$UpdateOp2);
                    break;
                case 2:
                    swapMoveRemove(list, i, adapterHelper$UpdateOp, i2, adapterHelper$UpdateOp2);
                    break;
            }
        }
        swapMoveUpdate(list, i, adapterHelper$UpdateOp, i2, adapterHelper$UpdateOp2);
    }

    void swapMoveRemove(List<AdapterHelper$UpdateOp> list, int i, AdapterHelper$UpdateOp adapterHelper$UpdateOp, int i2, AdapterHelper$UpdateOp adapterHelper$UpdateOp2) {
        boolean z;
        boolean z2 = false;
        if (adapterHelper$UpdateOp.positionStart < adapterHelper$UpdateOp.itemCount) {
            if (adapterHelper$UpdateOp2.positionStart == adapterHelper$UpdateOp.positionStart && adapterHelper$UpdateOp2.itemCount == adapterHelper$UpdateOp.itemCount - adapterHelper$UpdateOp.positionStart) {
                z = false;
                z2 = true;
            } else {
                z = false;
            }
        } else if (adapterHelper$UpdateOp2.positionStart == adapterHelper$UpdateOp.itemCount + 1 && adapterHelper$UpdateOp2.itemCount == adapterHelper$UpdateOp.positionStart - adapterHelper$UpdateOp.itemCount) {
            z = true;
            z2 = true;
        } else {
            z = true;
        }
        if (adapterHelper$UpdateOp.itemCount < adapterHelper$UpdateOp2.positionStart) {
            adapterHelper$UpdateOp2.positionStart--;
        } else if (adapterHelper$UpdateOp.itemCount < adapterHelper$UpdateOp2.positionStart + adapterHelper$UpdateOp2.itemCount) {
            adapterHelper$UpdateOp2.itemCount--;
            adapterHelper$UpdateOp.cmd = 2;
            adapterHelper$UpdateOp.itemCount = 1;
            if (adapterHelper$UpdateOp2.itemCount == 0) {
                list.remove(i2);
                this.mCallback.recycleUpdateOp(adapterHelper$UpdateOp2);
                return;
            }
            return;
        }
        AdapterHelper$UpdateOp adapterHelper$UpdateOpObtainUpdateOp = null;
        if (adapterHelper$UpdateOp.positionStart <= adapterHelper$UpdateOp2.positionStart) {
            adapterHelper$UpdateOp2.positionStart++;
        } else if (adapterHelper$UpdateOp.positionStart < adapterHelper$UpdateOp2.positionStart + adapterHelper$UpdateOp2.itemCount) {
            adapterHelper$UpdateOpObtainUpdateOp = this.mCallback.obtainUpdateOp(2, adapterHelper$UpdateOp.positionStart + 1, (adapterHelper$UpdateOp2.positionStart + adapterHelper$UpdateOp2.itemCount) - adapterHelper$UpdateOp.positionStart, null);
            adapterHelper$UpdateOp2.itemCount = adapterHelper$UpdateOp.positionStart - adapterHelper$UpdateOp2.positionStart;
        }
        if (z2) {
            list.set(i, adapterHelper$UpdateOp2);
            list.remove(i2);
            this.mCallback.recycleUpdateOp(adapterHelper$UpdateOp);
            return;
        }
        if (z) {
            if (adapterHelper$UpdateOpObtainUpdateOp != null) {
                if (adapterHelper$UpdateOp.positionStart > adapterHelper$UpdateOpObtainUpdateOp.positionStart) {
                    adapterHelper$UpdateOp.positionStart -= adapterHelper$UpdateOpObtainUpdateOp.itemCount;
                }
                if (adapterHelper$UpdateOp.itemCount > adapterHelper$UpdateOpObtainUpdateOp.positionStart) {
                    adapterHelper$UpdateOp.itemCount -= adapterHelper$UpdateOpObtainUpdateOp.itemCount;
                }
            }
            if (adapterHelper$UpdateOp.positionStart > adapterHelper$UpdateOp2.positionStart) {
                adapterHelper$UpdateOp.positionStart -= adapterHelper$UpdateOp2.itemCount;
            }
            if (adapterHelper$UpdateOp.itemCount > adapterHelper$UpdateOp2.positionStart) {
                adapterHelper$UpdateOp.itemCount -= adapterHelper$UpdateOp2.itemCount;
            }
        } else {
            if (adapterHelper$UpdateOpObtainUpdateOp != null) {
                if (adapterHelper$UpdateOp.positionStart >= adapterHelper$UpdateOpObtainUpdateOp.positionStart) {
                    adapterHelper$UpdateOp.positionStart -= adapterHelper$UpdateOpObtainUpdateOp.itemCount;
                }
                if (adapterHelper$UpdateOp.itemCount >= adapterHelper$UpdateOpObtainUpdateOp.positionStart) {
                    adapterHelper$UpdateOp.itemCount -= adapterHelper$UpdateOpObtainUpdateOp.itemCount;
                }
            }
            if (adapterHelper$UpdateOp.positionStart >= adapterHelper$UpdateOp2.positionStart) {
                adapterHelper$UpdateOp.positionStart -= adapterHelper$UpdateOp2.itemCount;
            }
            if (adapterHelper$UpdateOp.itemCount >= adapterHelper$UpdateOp2.positionStart) {
                adapterHelper$UpdateOp.itemCount -= adapterHelper$UpdateOp2.itemCount;
            }
        }
        list.set(i, adapterHelper$UpdateOp2);
        if (adapterHelper$UpdateOp.positionStart != adapterHelper$UpdateOp.itemCount) {
            list.set(i2, adapterHelper$UpdateOp);
        } else {
            list.remove(i2);
        }
        if (adapterHelper$UpdateOpObtainUpdateOp != null) {
            list.add(i, adapterHelper$UpdateOpObtainUpdateOp);
        }
    }

    private void swapMoveAdd(List<AdapterHelper$UpdateOp> list, int i, AdapterHelper$UpdateOp adapterHelper$UpdateOp, int i2, AdapterHelper$UpdateOp adapterHelper$UpdateOp2) {
        int i3 = adapterHelper$UpdateOp.itemCount < adapterHelper$UpdateOp2.positionStart ? -1 : 0;
        if (adapterHelper$UpdateOp.positionStart < adapterHelper$UpdateOp2.positionStart) {
            i3++;
        }
        if (adapterHelper$UpdateOp2.positionStart <= adapterHelper$UpdateOp.positionStart) {
            adapterHelper$UpdateOp.positionStart += adapterHelper$UpdateOp2.itemCount;
        }
        if (adapterHelper$UpdateOp2.positionStart <= adapterHelper$UpdateOp.itemCount) {
            adapterHelper$UpdateOp.itemCount += adapterHelper$UpdateOp2.itemCount;
        }
        adapterHelper$UpdateOp2.positionStart += i3;
        list.set(i, adapterHelper$UpdateOp2);
        list.set(i2, adapterHelper$UpdateOp);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void swapMoveUpdate(List<AdapterHelper$UpdateOp> list, int i, AdapterHelper$UpdateOp adapterHelper$UpdateOp, int i2, AdapterHelper$UpdateOp adapterHelper$UpdateOp2) {
        AdapterHelper$UpdateOp adapterHelper$UpdateOpObtainUpdateOp;
        AdapterHelper$UpdateOp adapterHelper$UpdateOpObtainUpdateOp2 = null;
        if (adapterHelper$UpdateOp.itemCount < adapterHelper$UpdateOp2.positionStart) {
            adapterHelper$UpdateOp2.positionStart--;
        } else {
            if (adapterHelper$UpdateOp.itemCount < adapterHelper$UpdateOp2.positionStart + adapterHelper$UpdateOp2.itemCount) {
                adapterHelper$UpdateOp2.itemCount--;
                adapterHelper$UpdateOpObtainUpdateOp = this.mCallback.obtainUpdateOp(4, adapterHelper$UpdateOp.positionStart, 1, adapterHelper$UpdateOp2.payload);
            }
            if (adapterHelper$UpdateOp.positionStart > adapterHelper$UpdateOp2.positionStart) {
                adapterHelper$UpdateOp2.positionStart++;
            } else if (adapterHelper$UpdateOp.positionStart < adapterHelper$UpdateOp2.positionStart + adapterHelper$UpdateOp2.itemCount) {
                int i3 = (adapterHelper$UpdateOp2.positionStart + adapterHelper$UpdateOp2.itemCount) - adapterHelper$UpdateOp.positionStart;
                adapterHelper$UpdateOpObtainUpdateOp2 = this.mCallback.obtainUpdateOp(4, adapterHelper$UpdateOp.positionStart + 1, i3, adapterHelper$UpdateOp2.payload);
                adapterHelper$UpdateOp2.itemCount -= i3;
            }
            list.set(i2, adapterHelper$UpdateOp);
            if (adapterHelper$UpdateOp2.itemCount <= 0) {
                list.set(i, adapterHelper$UpdateOp2);
            } else {
                list.remove(i);
                this.mCallback.recycleUpdateOp(adapterHelper$UpdateOp2);
            }
            if (adapterHelper$UpdateOpObtainUpdateOp != null) {
                list.add(i, adapterHelper$UpdateOpObtainUpdateOp);
            }
            if (adapterHelper$UpdateOpObtainUpdateOp2 == null) {
                list.add(i, adapterHelper$UpdateOpObtainUpdateOp2);
                return;
            }
            return;
        }
        adapterHelper$UpdateOpObtainUpdateOp = null;
        if (adapterHelper$UpdateOp.positionStart > adapterHelper$UpdateOp2.positionStart) {
        }
        list.set(i2, adapterHelper$UpdateOp);
        if (adapterHelper$UpdateOp2.itemCount <= 0) {
        }
        if (adapterHelper$UpdateOpObtainUpdateOp != null) {
        }
        if (adapterHelper$UpdateOpObtainUpdateOp2 == null) {
        }
    }

    private int getLastMoveOutOfOrder(List<AdapterHelper$UpdateOp> list) {
        boolean z = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).cmd != 8) {
                z = true;
            } else if (z) {
                return size;
            }
        }
        return -1;
    }
}
