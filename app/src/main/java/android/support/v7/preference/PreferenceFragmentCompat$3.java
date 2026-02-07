package android.support.v7.preference;

import android.support.v7.widget.RecyclerView$Adapter;

/* JADX INFO: loaded from: classes.dex */
class PreferenceFragmentCompat$3 implements Runnable {
    final /* synthetic */ PreferenceFragmentCompat this$0;
    final /* synthetic */ String val$key;
    final /* synthetic */ Preference val$preference;

    PreferenceFragmentCompat$3(PreferenceFragmentCompat preferenceFragmentCompat, Preference preference, String str) {
        this.this$0 = preferenceFragmentCompat;
        this.val$preference = preference;
        this.val$key = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public void run() {
        int preferenceAdapterPosition;
        RecyclerView$Adapter adapter = this.this$0.mList.getAdapter();
        if (!(adapter instanceof PreferenceGroup$PreferencePositionCallback)) {
            if (adapter != 0) {
                throw new IllegalStateException("Adapter must implement PreferencePositionCallback");
            }
            return;
        }
        if (this.val$preference != null) {
            preferenceAdapterPosition = ((PreferenceGroup$PreferencePositionCallback) adapter).getPreferenceAdapterPosition(this.val$preference);
        } else {
            preferenceAdapterPosition = ((PreferenceGroup$PreferencePositionCallback) adapter).getPreferenceAdapterPosition(this.val$key);
        }
        if (preferenceAdapterPosition != -1) {
            this.this$0.mList.scrollToPosition(preferenceAdapterPosition);
        } else {
            adapter.registerAdapterDataObserver(new PreferenceFragmentCompat$ScrollToPreferenceObserver(adapter, this.this$0.mList, this.val$preference, this.val$key));
        }
    }
}
