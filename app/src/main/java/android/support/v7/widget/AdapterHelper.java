package android.support.v7.widget;

import android.support.v4.util.Pools$Pool;
import android.support.v4.util.Pools$SimplePool;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class AdapterHelper implements OpReorderer$Callback {
    private static final boolean DEBUG = false;
    static final int POSITION_TYPE_INVISIBLE = 0;
    static final int POSITION_TYPE_NEW_OR_LAID_OUT = 1;
    private static final String TAG = "AHT";
    final AdapterHelper$Callback mCallback;
    final boolean mDisableRecycler;
    private int mExistingUpdateTypes;
    Runnable mOnItemProcessedCallback;
    final OpReorderer mOpReorderer;
    final ArrayList<AdapterHelper$UpdateOp> mPendingUpdates;
    final ArrayList<AdapterHelper$UpdateOp> mPostponedList;
    private Pools$Pool<AdapterHelper$UpdateOp> mUpdateOpPool;

    AdapterHelper(AdapterHelper$Callback adapterHelper$Callback) {
        this(adapterHelper$Callback, false);
    }

    AdapterHelper(AdapterHelper$Callback adapterHelper$Callback, boolean z) {
        this.mUpdateOpPool = new Pools$SimplePool(30);
        this.mPendingUpdates = new ArrayList<>();
        this.mPostponedList = new ArrayList<>();
        this.mExistingUpdateTypes = 0;
        this.mCallback = adapterHelper$Callback;
        this.mDisableRecycler = z;
        this.mOpReorderer = new OpReorderer(this);
    }

    AdapterHelper addUpdateOp(AdapterHelper$UpdateOp... adapterHelper$UpdateOpArr) {
        Collections.addAll(this.mPendingUpdates, adapterHelper$UpdateOpArr);
        return this;
    }

    void reset() {
        recycleUpdateOpsAndClearList(this.mPendingUpdates);
        recycleUpdateOpsAndClearList(this.mPostponedList);
        this.mExistingUpdateTypes = 0;
    }

    void preProcess() {
        this.mOpReorderer.reorderOps(this.mPendingUpdates);
        int size = this.mPendingUpdates.size();
        for (int i = 0; i < size; i++) {
            AdapterHelper$UpdateOp adapterHelper$UpdateOp = this.mPendingUpdates.get(i);
            int i2 = adapterHelper$UpdateOp.cmd;
            if (i2 == 4) {
                applyUpdate(adapterHelper$UpdateOp);
            } else if (i2 != 8) {
                switch (i2) {
                    case 1:
                        applyAdd(adapterHelper$UpdateOp);
                        break;
                    case 2:
                        applyRemove(adapterHelper$UpdateOp);
                        break;
                }
            } else {
                applyMove(adapterHelper$UpdateOp);
            }
            if (this.mOnItemProcessedCallback != null) {
                this.mOnItemProcessedCallback.run();
            }
        }
        this.mPendingUpdates.clear();
    }

    void consumePostponedUpdates() {
        int size = this.mPostponedList.size();
        for (int i = 0; i < size; i++) {
            this.mCallback.onDispatchSecondPass(this.mPostponedList.get(i));
        }
        recycleUpdateOpsAndClearList(this.mPostponedList);
        this.mExistingUpdateTypes = 0;
    }

    private void applyMove(AdapterHelper$UpdateOp adapterHelper$UpdateOp) {
        postponeAndUpdateViewHolders(adapterHelper$UpdateOp);
    }

    private void applyRemove(AdapterHelper$UpdateOp adapterHelper$UpdateOp) {
        boolean z;
        byte b;
        int i = adapterHelper$UpdateOp.positionStart;
        int i2 = adapterHelper$UpdateOp.positionStart + adapterHelper$UpdateOp.itemCount;
        int i3 = adapterHelper$UpdateOp.positionStart;
        byte b2 = -1;
        int i4 = 0;
        while (i3 < i2) {
            if (this.mCallback.findViewHolder(i3) != null || canFindInPreLayout(i3)) {
                if (b2 == 0) {
                    dispatchAndUpdateViewHolders(obtainUpdateOp(2, i, i4, null));
                    z = true;
                } else {
                    z = false;
                }
                b = 1;
            } else {
                if (b2 == 1) {
                    postponeAndUpdateViewHolders(obtainUpdateOp(2, i, i4, null));
                    z = true;
                } else {
                    z = false;
                }
                b = 0;
            }
            if (z) {
                i3 -= i4;
                i2 -= i4;
                i4 = 1;
            } else {
                i4++;
            }
            i3++;
            b2 = b;
        }
        if (i4 != adapterHelper$UpdateOp.itemCount) {
            recycleUpdateOp(adapterHelper$UpdateOp);
            adapterHelper$UpdateOp = obtainUpdateOp(2, i, i4, null);
        }
        if (b2 == 0) {
            dispatchAndUpdateViewHolders(adapterHelper$UpdateOp);
        } else {
            postponeAndUpdateViewHolders(adapterHelper$UpdateOp);
        }
    }

    private void applyUpdate(AdapterHelper$UpdateOp adapterHelper$UpdateOp) {
        int i = adapterHelper$UpdateOp.positionStart;
        int i2 = adapterHelper$UpdateOp.positionStart + adapterHelper$UpdateOp.itemCount;
        byte b = -1;
        int i3 = i;
        int i4 = 0;
        for (int i5 = adapterHelper$UpdateOp.positionStart; i5 < i2; i5++) {
            if (this.mCallback.findViewHolder(i5) != null || canFindInPreLayout(i5)) {
                if (b == 0) {
                    dispatchAndUpdateViewHolders(obtainUpdateOp(4, i3, i4, adapterHelper$UpdateOp.payload));
                    i3 = i5;
                    i4 = 0;
                }
                b = 1;
            } else {
                if (b == 1) {
                    postponeAndUpdateViewHolders(obtainUpdateOp(4, i3, i4, adapterHelper$UpdateOp.payload));
                    i3 = i5;
                    i4 = 0;
                }
                b = 0;
            }
            i4++;
        }
        if (i4 != adapterHelper$UpdateOp.itemCount) {
            Object obj = adapterHelper$UpdateOp.payload;
            recycleUpdateOp(adapterHelper$UpdateOp);
            adapterHelper$UpdateOp = obtainUpdateOp(4, i3, i4, obj);
        }
        if (b == 0) {
            dispatchAndUpdateViewHolders(adapterHelper$UpdateOp);
        } else {
            postponeAndUpdateViewHolders(adapterHelper$UpdateOp);
        }
    }

    private void dispatchAndUpdateViewHolders(AdapterHelper$UpdateOp adapterHelper$UpdateOp) {
        int i;
        if (adapterHelper$UpdateOp.cmd == 1 || adapterHelper$UpdateOp.cmd == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int iUpdatePositionWithPostponed = updatePositionWithPostponed(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.cmd);
        int i2 = adapterHelper$UpdateOp.positionStart;
        int i3 = adapterHelper$UpdateOp.cmd;
        if (i3 == 2) {
            i = 0;
        } else {
            if (i3 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + adapterHelper$UpdateOp);
            }
            i = 1;
        }
        int i4 = iUpdatePositionWithPostponed;
        int i5 = i2;
        int i6 = 1;
        for (int i7 = 1; i7 < adapterHelper$UpdateOp.itemCount; i7++) {
            int iUpdatePositionWithPostponed2 = updatePositionWithPostponed(adapterHelper$UpdateOp.positionStart + (i * i7), adapterHelper$UpdateOp.cmd);
            int i8 = adapterHelper$UpdateOp.cmd;
            if (i8 == 2 ? iUpdatePositionWithPostponed2 == i4 : i8 == 4 && iUpdatePositionWithPostponed2 == i4 + 1) {
                i6++;
            } else {
                AdapterHelper$UpdateOp adapterHelper$UpdateOpObtainUpdateOp = obtainUpdateOp(adapterHelper$UpdateOp.cmd, i4, i6, adapterHelper$UpdateOp.payload);
                dispatchFirstPassAndUpdateViewHolders(adapterHelper$UpdateOpObtainUpdateOp, i5);
                recycleUpdateOp(adapterHelper$UpdateOpObtainUpdateOp);
                if (adapterHelper$UpdateOp.cmd == 4) {
                    i5 += i6;
                }
                i6 = 1;
                i4 = iUpdatePositionWithPostponed2;
            }
        }
        Object obj = adapterHelper$UpdateOp.payload;
        recycleUpdateOp(adapterHelper$UpdateOp);
        if (i6 > 0) {
            AdapterHelper$UpdateOp adapterHelper$UpdateOpObtainUpdateOp2 = obtainUpdateOp(adapterHelper$UpdateOp.cmd, i4, i6, obj);
            dispatchFirstPassAndUpdateViewHolders(adapterHelper$UpdateOpObtainUpdateOp2, i5);
            recycleUpdateOp(adapterHelper$UpdateOpObtainUpdateOp2);
        }
    }

    void dispatchFirstPassAndUpdateViewHolders(AdapterHelper$UpdateOp adapterHelper$UpdateOp, int i) {
        this.mCallback.onDispatchFirstPass(adapterHelper$UpdateOp);
        int i2 = adapterHelper$UpdateOp.cmd;
        if (i2 == 2) {
            this.mCallback.offsetPositionsForRemovingInvisible(i, adapterHelper$UpdateOp.itemCount);
        } else {
            if (i2 == 4) {
                this.mCallback.markViewHoldersUpdated(i, adapterHelper$UpdateOp.itemCount, adapterHelper$UpdateOp.payload);
                return;
            }
            throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
        }
    }

    private int updatePositionWithPostponed(int i, int i2) {
        int i3;
        int i4;
        for (int size = this.mPostponedList.size() - 1; size >= 0; size--) {
            AdapterHelper$UpdateOp adapterHelper$UpdateOp = this.mPostponedList.get(size);
            if (adapterHelper$UpdateOp.cmd == 8) {
                if (adapterHelper$UpdateOp.positionStart < adapterHelper$UpdateOp.itemCount) {
                    i3 = adapterHelper$UpdateOp.positionStart;
                    i4 = adapterHelper$UpdateOp.itemCount;
                } else {
                    i3 = adapterHelper$UpdateOp.itemCount;
                    i4 = adapterHelper$UpdateOp.positionStart;
                }
                if (i >= i3 && i <= i4) {
                    if (i3 == adapterHelper$UpdateOp.positionStart) {
                        if (i2 == 1) {
                            adapterHelper$UpdateOp.itemCount++;
                        } else if (i2 == 2) {
                            adapterHelper$UpdateOp.itemCount--;
                        }
                        i++;
                    } else {
                        if (i2 == 1) {
                            adapterHelper$UpdateOp.positionStart++;
                        } else if (i2 == 2) {
                            adapterHelper$UpdateOp.positionStart--;
                        }
                        i--;
                    }
                } else if (i < adapterHelper$UpdateOp.positionStart) {
                    if (i2 == 1) {
                        adapterHelper$UpdateOp.positionStart++;
                        adapterHelper$UpdateOp.itemCount++;
                    } else if (i2 == 2) {
                        adapterHelper$UpdateOp.positionStart--;
                        adapterHelper$UpdateOp.itemCount--;
                    }
                }
            } else if (adapterHelper$UpdateOp.positionStart <= i) {
                if (adapterHelper$UpdateOp.cmd == 1) {
                    i -= adapterHelper$UpdateOp.itemCount;
                } else if (adapterHelper$UpdateOp.cmd == 2) {
                    i += adapterHelper$UpdateOp.itemCount;
                }
            } else if (i2 == 1) {
                adapterHelper$UpdateOp.positionStart++;
            } else if (i2 == 2) {
                adapterHelper$UpdateOp.positionStart--;
            }
        }
        for (int size2 = this.mPostponedList.size() - 1; size2 >= 0; size2--) {
            AdapterHelper$UpdateOp adapterHelper$UpdateOp2 = this.mPostponedList.get(size2);
            if (adapterHelper$UpdateOp2.cmd == 8) {
                if (adapterHelper$UpdateOp2.itemCount == adapterHelper$UpdateOp2.positionStart || adapterHelper$UpdateOp2.itemCount < 0) {
                    this.mPostponedList.remove(size2);
                    recycleUpdateOp(adapterHelper$UpdateOp2);
                }
            } else if (adapterHelper$UpdateOp2.itemCount <= 0) {
                this.mPostponedList.remove(size2);
                recycleUpdateOp(adapterHelper$UpdateOp2);
            }
        }
        return i;
    }

    private boolean canFindInPreLayout(int i) {
        int size = this.mPostponedList.size();
        for (int i2 = 0; i2 < size; i2++) {
            AdapterHelper$UpdateOp adapterHelper$UpdateOp = this.mPostponedList.get(i2);
            if (adapterHelper$UpdateOp.cmd == 8) {
                if (findPositionOffset(adapterHelper$UpdateOp.itemCount, i2 + 1) == i) {
                    return true;
                }
            } else if (adapterHelper$UpdateOp.cmd == 1) {
                int i3 = adapterHelper$UpdateOp.positionStart + adapterHelper$UpdateOp.itemCount;
                for (int i4 = adapterHelper$UpdateOp.positionStart; i4 < i3; i4++) {
                    if (findPositionOffset(i4, i2 + 1) == i) {
                        return true;
                    }
                }
            } else {
                continue;
            }
        }
        return false;
    }

    private void applyAdd(AdapterHelper$UpdateOp adapterHelper$UpdateOp) {
        postponeAndUpdateViewHolders(adapterHelper$UpdateOp);
    }

    private void postponeAndUpdateViewHolders(AdapterHelper$UpdateOp adapterHelper$UpdateOp) {
        this.mPostponedList.add(adapterHelper$UpdateOp);
        int i = adapterHelper$UpdateOp.cmd;
        if (i == 4) {
            this.mCallback.markViewHoldersUpdated(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount, adapterHelper$UpdateOp.payload);
            return;
        }
        if (i != 8) {
            switch (i) {
                case 1:
                    this.mCallback.offsetPositionsForAdd(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
                    return;
                case 2:
                    this.mCallback.offsetPositionsForRemovingLaidOutOrNewView(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
                    return;
                default:
                    throw new IllegalArgumentException("Unknown update op type for " + adapterHelper$UpdateOp);
            }
        }
        this.mCallback.offsetPositionsForMove(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
    }

    boolean hasPendingUpdates() {
        return this.mPendingUpdates.size() > 0;
    }

    boolean hasAnyUpdateTypes(int i) {
        return (this.mExistingUpdateTypes & i) != 0;
    }

    int findPositionOffset(int i) {
        return findPositionOffset(i, 0);
    }

    int findPositionOffset(int i, int i2) {
        int size = this.mPostponedList.size();
        while (i2 < size) {
            AdapterHelper$UpdateOp adapterHelper$UpdateOp = this.mPostponedList.get(i2);
            if (adapterHelper$UpdateOp.cmd == 8) {
                if (adapterHelper$UpdateOp.positionStart == i) {
                    i = adapterHelper$UpdateOp.itemCount;
                } else {
                    if (adapterHelper$UpdateOp.positionStart < i) {
                        i--;
                    }
                    if (adapterHelper$UpdateOp.itemCount <= i) {
                        i++;
                    }
                }
            } else if (adapterHelper$UpdateOp.positionStart > i) {
                continue;
            } else if (adapterHelper$UpdateOp.cmd == 2) {
                if (i < adapterHelper$UpdateOp.positionStart + adapterHelper$UpdateOp.itemCount) {
                    return -1;
                }
                i -= adapterHelper$UpdateOp.itemCount;
            } else if (adapterHelper$UpdateOp.cmd == 1) {
                i += adapterHelper$UpdateOp.itemCount;
            }
            i2++;
        }
        return i;
    }

    boolean onItemRangeChanged(int i, int i2, Object obj) {
        if (i2 < 1) {
            return false;
        }
        this.mPendingUpdates.add(obtainUpdateOp(4, i, i2, obj));
        this.mExistingUpdateTypes |= 4;
        return this.mPendingUpdates.size() == 1;
    }

    boolean onItemRangeInserted(int i, int i2) {
        if (i2 < 1) {
            return false;
        }
        this.mPendingUpdates.add(obtainUpdateOp(1, i, i2, null));
        this.mExistingUpdateTypes |= 1;
        return this.mPendingUpdates.size() == 1;
    }

    boolean onItemRangeRemoved(int i, int i2) {
        if (i2 < 1) {
            return false;
        }
        this.mPendingUpdates.add(obtainUpdateOp(2, i, i2, null));
        this.mExistingUpdateTypes |= 2;
        return this.mPendingUpdates.size() == 1;
    }

    boolean onItemRangeMoved(int i, int i2, int i3) {
        if (i == i2) {
            return false;
        }
        if (i3 != 1) {
            throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
        }
        this.mPendingUpdates.add(obtainUpdateOp(8, i, i2, null));
        this.mExistingUpdateTypes |= 8;
        return this.mPendingUpdates.size() == 1;
    }

    void consumeUpdatesInOnePass() {
        consumePostponedUpdates();
        int size = this.mPendingUpdates.size();
        for (int i = 0; i < size; i++) {
            AdapterHelper$UpdateOp adapterHelper$UpdateOp = this.mPendingUpdates.get(i);
            int i2 = adapterHelper$UpdateOp.cmd;
            if (i2 == 4) {
                this.mCallback.onDispatchSecondPass(adapterHelper$UpdateOp);
                this.mCallback.markViewHoldersUpdated(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount, adapterHelper$UpdateOp.payload);
            } else if (i2 != 8) {
                switch (i2) {
                    case 1:
                        this.mCallback.onDispatchSecondPass(adapterHelper$UpdateOp);
                        this.mCallback.offsetPositionsForAdd(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
                        break;
                    case 2:
                        this.mCallback.onDispatchSecondPass(adapterHelper$UpdateOp);
                        this.mCallback.offsetPositionsForRemovingInvisible(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
                        break;
                }
            } else {
                this.mCallback.onDispatchSecondPass(adapterHelper$UpdateOp);
                this.mCallback.offsetPositionsForMove(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
            }
            if (this.mOnItemProcessedCallback != null) {
                this.mOnItemProcessedCallback.run();
            }
        }
        recycleUpdateOpsAndClearList(this.mPendingUpdates);
        this.mExistingUpdateTypes = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0047, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int applyPendingUpdatesToPosition(int i) {
        int size = this.mPendingUpdates.size();
        for (int i2 = 0; i2 < size; i2++) {
            AdapterHelper$UpdateOp adapterHelper$UpdateOp = this.mPendingUpdates.get(i2);
            int i3 = adapterHelper$UpdateOp.cmd;
            if (i3 != 8) {
                switch (i3) {
                    case 1:
                        if (adapterHelper$UpdateOp.positionStart <= i) {
                            i += adapterHelper$UpdateOp.itemCount;
                        }
                        break;
                    case 2:
                        if (adapterHelper$UpdateOp.positionStart > i) {
                            continue;
                        } else {
                            if (adapterHelper$UpdateOp.positionStart + adapterHelper$UpdateOp.itemCount > i) {
                                return -1;
                            }
                            i -= adapterHelper$UpdateOp.itemCount;
                        }
                        break;
                }
            } else if (adapterHelper$UpdateOp.positionStart == i) {
                i = adapterHelper$UpdateOp.itemCount;
            } else {
                if (adapterHelper$UpdateOp.positionStart < i) {
                    i--;
                }
                if (adapterHelper$UpdateOp.itemCount <= i) {
                    i++;
                }
            }
        }
        return i;
    }

    boolean hasUpdates() {
        return (this.mPostponedList.isEmpty() || this.mPendingUpdates.isEmpty()) ? false : true;
    }

    @Override // android.support.v7.widget.OpReorderer$Callback
    public AdapterHelper$UpdateOp obtainUpdateOp(int i, int i2, int i3, Object obj) {
        AdapterHelper$UpdateOp adapterHelper$UpdateOpAcquire = this.mUpdateOpPool.acquire();
        if (adapterHelper$UpdateOpAcquire == null) {
            return new AdapterHelper$UpdateOp(i, i2, i3, obj);
        }
        adapterHelper$UpdateOpAcquire.cmd = i;
        adapterHelper$UpdateOpAcquire.positionStart = i2;
        adapterHelper$UpdateOpAcquire.itemCount = i3;
        adapterHelper$UpdateOpAcquire.payload = obj;
        return adapterHelper$UpdateOpAcquire;
    }

    @Override // android.support.v7.widget.OpReorderer$Callback
    public void recycleUpdateOp(AdapterHelper$UpdateOp adapterHelper$UpdateOp) {
        if (this.mDisableRecycler) {
            return;
        }
        adapterHelper$UpdateOp.payload = null;
        this.mUpdateOpPool.release(adapterHelper$UpdateOp);
    }

    void recycleUpdateOpsAndClearList(List<AdapterHelper$UpdateOp> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            recycleUpdateOp(list.get(i));
        }
        list.clear();
    }
}
