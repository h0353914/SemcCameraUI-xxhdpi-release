package android.support.v7.preference;

import android.support.v7.util.DiffUtil$Callback;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class PreferenceGroupAdapter$2 extends DiffUtil$Callback {
    final /* synthetic */ PreferenceGroupAdapter this$0;
    final /* synthetic */ PreferenceManager$PreferenceComparisonCallback val$comparisonCallback;
    final /* synthetic */ List val$oldVisibleList;
    final /* synthetic */ List val$visiblePreferenceList;

    PreferenceGroupAdapter$2(PreferenceGroupAdapter preferenceGroupAdapter, List list, List list2, PreferenceManager$PreferenceComparisonCallback preferenceManager$PreferenceComparisonCallback) {
        this.this$0 = preferenceGroupAdapter;
        this.val$oldVisibleList = list;
        this.val$visiblePreferenceList = list2;
        this.val$comparisonCallback = preferenceManager$PreferenceComparisonCallback;
    }

    @Override // android.support.v7.util.DiffUtil$Callback
    public int getOldListSize() {
        return this.val$oldVisibleList.size();
    }

    @Override // android.support.v7.util.DiffUtil$Callback
    public int getNewListSize() {
        return this.val$visiblePreferenceList.size();
    }

    @Override // android.support.v7.util.DiffUtil$Callback
    public boolean areItemsTheSame(int i, int i2) {
        return this.val$comparisonCallback.arePreferenceItemsTheSame((Preference) this.val$oldVisibleList.get(i), (Preference) this.val$visiblePreferenceList.get(i2));
    }

    @Override // android.support.v7.util.DiffUtil$Callback
    public boolean areContentsTheSame(int i, int i2) {
        return this.val$comparisonCallback.arePreferenceContentsTheSame((Preference) this.val$oldVisibleList.get(i), (Preference) this.val$visiblePreferenceList.get(i2));
    }
}
