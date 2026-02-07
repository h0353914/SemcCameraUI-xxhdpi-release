package com.sonyericsson.android.camera.view.selectabledialog;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.LinearLayout;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
protected abstract class AbsDialogScrollView$ContentArrange extends DataSetObserver {
    protected ViewGroup container;
    protected ArrayAdapter mAdapter;
    protected LinearLayout mRowItems;

    protected int computeArrangeHeight() {
        return 0;
    }

    protected int computeHeight() {
        return 0;
    }

    protected int computeScrollOffset() {
        return 0;
    }

    protected View findViewWithTag(Object obj) {
        return null;
    }

    protected abstract void setup();

    protected AbsDialogScrollView$ContentArrange(ArrayAdapter arrayAdapter) {
        this.mAdapter = arrayAdapter;
        this.mAdapter.registerDataSetObserver(this);
    }

    protected View getPositionItemView(int i) {
        return this.mRowItems.getChildAt(i);
    }

    protected ViewGroup getPositionItemContainerView(int i) {
        return this.mRowItems;
    }

    protected void addItemView(View view, int i) {
        this.mRowItems.addView(view);
    }

    protected void updateItems(ArrayAdapter arrayAdapter) {
        this.mAdapter.unregisterDataSetObserver(this);
        this.mAdapter = arrayAdapter;
        this.mAdapter.registerDataSetObserver(this);
        fetchItems();
    }

    protected int getItemCount() {
        return this.mAdapter.getCount();
    }

    protected View getView() {
        return this.container;
    }

    protected void fetchItems() {
        if (CamLog.VERBOSE) {
            CamLog.d("fetchItems() E prev-items:" + this.mRowItems.getChildCount() + " adapter-size:" + this.mAdapter.getCount());
        }
        if (this.mRowItems.getChildCount() > this.mAdapter.getCount()) {
            this.mRowItems.removeViews(this.mAdapter.getCount(), this.mRowItems.getChildCount() - this.mAdapter.getCount());
        }
        for (int i = 0; i < this.mAdapter.getCount(); i++) {
            if (i < this.mRowItems.getChildCount()) {
                this.mAdapter.getView(i, getPositionItemView(i), getPositionItemContainerView(i));
                if (CamLog.VERBOSE) {
                    CamLog.d("Update existing item, size:" + this.mRowItems.getChildCount());
                }
            } else {
                addItemView(this.mAdapter.getView(i, null, getPositionItemContainerView(i)), i);
                if (CamLog.VERBOSE) {
                    CamLog.d("Add new item, size:" + this.mRowItems.getChildCount());
                }
            }
        }
        if (CamLog.VERBOSE) {
            CamLog.d("fetchItems() X");
        }
    }

    protected void release() {
        this.mAdapter.unregisterDataSetObserver(this);
    }
}
