package android.support.v7.preference;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView$Adapter;
import android.support.v7.widget.RecyclerView$AdapterDataObserver;

class PreferenceFragmentCompat$ScrollToPreferenceObserver extends RecyclerView$AdapterDataObserver {
    private final RecyclerView$Adapter mAdapter;
    private final String mKey;
    private final RecyclerView mList;
    private final Preference mPreference;

    public PreferenceFragmentCompat$ScrollToPreferenceObserver(RecyclerView$Adapter recyclerView$Adapter, RecyclerView recyclerView, Preference preference, String str) {
        this.mAdapter = recyclerView$Adapter;
        this.mList = recyclerView;
        this.mPreference = preference;
        this.mKey = str;
    }

    private void scrollToPreference() {
        int preferenceAdapterPosition;
        this.mAdapter.unregisterAdapterDataObserver(this);
        if (this.mPreference != null) {
            preferenceAdapterPosition = ((PreferenceGroup$PreferencePositionCallback) this.mAdapter).getPreferenceAdapterPosition(this.mPreference);
        } else {
            preferenceAdapterPosition = ((PreferenceGroup$PreferencePositionCallback) this.mAdapter).getPreferenceAdapterPosition(this.mKey);
        }
        if (preferenceAdapterPosition != -1) {
            this.mList.scrollToPosition(preferenceAdapterPosition);
        }
    }

    @Override // android.support.v7.widget.RecyclerView$AdapterDataObserver
    public void onChanged() {
        scrollToPreference();
    }

    @Override // android.support.v7.widget.RecyclerView$AdapterDataObserver
    public void onItemRangeChanged(int i, int i2) {
        scrollToPreference();
    }

    @Override // android.support.v7.widget.RecyclerView$AdapterDataObserver
    public void onItemRangeChanged(int i, int i2, Object obj) {
        scrollToPreference();
    }

    @Override // android.support.v7.widget.RecyclerView$AdapterDataObserver
    public void onItemRangeInserted(int i, int i2) {
        scrollToPreference();
    }

    @Override // android.support.v7.widget.RecyclerView$AdapterDataObserver
    public void onItemRangeRemoved(int i, int i2) {
        scrollToPreference();
    }

    @Override // android.support.v7.widget.RecyclerView$AdapterDataObserver
    public void onItemRangeMoved(int i, int i2, int i3) {
        scrollToPreference();
    }
}
