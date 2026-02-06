package android.support.v7.widget;

import android.content.res.Resources$Theme;
import android.database.DataSetObserver;
import android.os.Build$VERSION;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.SpinnerAdapter;

class AppCompatSpinner$DropDownAdapter implements ListAdapter, SpinnerAdapter {
    private SpinnerAdapter mAdapter;
    private ListAdapter mListAdapter;

    @Override // android.widget.Adapter
    public int getItemViewType(int i) {
        return 0;
    }

    @Override // android.widget.Adapter
    public int getViewTypeCount() {
        return 1;
    }

    public AppCompatSpinner$DropDownAdapter(@Nullable SpinnerAdapter spinnerAdapter, @Nullable Resources$Theme resources$Theme) {
        this.mAdapter = spinnerAdapter;
        if (spinnerAdapter instanceof ListAdapter) {
            this.mListAdapter = (ListAdapter) spinnerAdapter;
        }
        if (resources$Theme != null) {
            if (Build$VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof android.widget.ThemedSpinnerAdapter)) {
                android.widget.ThemedSpinnerAdapter themedSpinnerAdapter = (android.widget.ThemedSpinnerAdapter) spinnerAdapter;
                if (themedSpinnerAdapter.getDropDownViewTheme() != resources$Theme) {
                    themedSpinnerAdapter.setDropDownViewTheme(resources$Theme);
                    return;
                }
                return;
            }
            if (spinnerAdapter instanceof ThemedSpinnerAdapter) {
                ThemedSpinnerAdapter themedSpinnerAdapter2 = (ThemedSpinnerAdapter) spinnerAdapter;
                if (themedSpinnerAdapter2.getDropDownViewTheme() == null) {
                    themedSpinnerAdapter2.setDropDownViewTheme(resources$Theme);
                }
            }
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.mAdapter == null) {
            return 0;
        }
        return this.mAdapter.getCount();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        if (this.mAdapter == null) {
            return null;
        }
        return this.mAdapter.getItem(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        if (this.mAdapter == null) {
            return -1L;
        }
        return this.mAdapter.getItemId(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        return getDropDownView(i, view, viewGroup);
    }

    @Override // android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (this.mAdapter == null) {
            return null;
        }
        return this.mAdapter.getDropDownView(i, view, viewGroup);
    }

    @Override // android.widget.Adapter
    public boolean hasStableIds() {
        return this.mAdapter != null && this.mAdapter.hasStableIds();
    }

    @Override // android.widget.Adapter
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        if (this.mAdapter != null) {
            this.mAdapter.registerDataSetObserver(dataSetObserver);
        }
    }

    @Override // android.widget.Adapter
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        if (this.mAdapter != null) {
            this.mAdapter.unregisterDataSetObserver(dataSetObserver);
        }
    }

    @Override // android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        ListAdapter listAdapter = this.mListAdapter;
        if (listAdapter != null) {
            return listAdapter.areAllItemsEnabled();
        }
        return true;
    }

    @Override // android.widget.ListAdapter
    public boolean isEnabled(int i) {
        ListAdapter listAdapter = this.mListAdapter;
        if (listAdapter != null) {
            return listAdapter.isEnabled(i);
        }
        return true;
    }

    @Override // android.widget.Adapter
    public boolean isEmpty() {
        return getCount() == 0;
    }
}
