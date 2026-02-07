package com.sonyericsson.android.camera.research;

/* JADX INFO: loaded from: classes.dex */
class LocalResearchUtil$BasisAndChange<T> {
    private T mBasis;
    private T mChange;

    static /* synthetic */ Object access$000(LocalResearchUtil$BasisAndChange localResearchUtil$BasisAndChange) {
        return localResearchUtil$BasisAndChange.mBasis;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ Object access$002(LocalResearchUtil$BasisAndChange localResearchUtil$BasisAndChange, Object obj) {
        localResearchUtil$BasisAndChange.mBasis = obj;
        return obj;
    }

    static /* synthetic */ Object access$100(LocalResearchUtil$BasisAndChange localResearchUtil$BasisAndChange) {
        return localResearchUtil$BasisAndChange.mChange;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ Object access$102(LocalResearchUtil$BasisAndChange localResearchUtil$BasisAndChange, Object obj) {
        localResearchUtil$BasisAndChange.mChange = obj;
        return obj;
    }

    public LocalResearchUtil$BasisAndChange(T t, T t2) {
        this.mBasis = null;
        this.mChange = null;
        this.mBasis = t;
        this.mChange = t2;
    }

    boolean hasChange() {
        return this.mBasis != this.mChange;
    }
}
