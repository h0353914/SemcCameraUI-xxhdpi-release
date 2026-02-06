package com.duolingo.open.rtlviewpager;

import android.database.DataSetObserver;

class DelegatingPagerAdapter$MyDataSetObserver extends DataSetObserver {
    final DelegatingPagerAdapter mParent;

    /* synthetic */ DelegatingPagerAdapter$MyDataSetObserver(DelegatingPagerAdapter delegatingPagerAdapter, DelegatingPagerAdapter$1 delegatingPagerAdapter$1) {
        this(delegatingPagerAdapter);
    }

    private DelegatingPagerAdapter$MyDataSetObserver(DelegatingPagerAdapter delegatingPagerAdapter) {
        this.mParent = delegatingPagerAdapter;
    }

    @Override // android.database.DataSetObserver
    public void onChanged() {
        if (this.mParent != null) {
            this.mParent.superNotifyDataSetChanged();
        }
    }

    @Override // android.database.DataSetObserver
    public void onInvalidated() {
        onChanged();
    }
}
