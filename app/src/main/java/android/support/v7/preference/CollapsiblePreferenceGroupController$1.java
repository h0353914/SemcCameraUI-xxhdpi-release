package android.support.v7.preference;

/* JADX INFO: loaded from: classes.dex */
class CollapsiblePreferenceGroupController$1 implements Preference$OnPreferenceClickListener {
    final /* synthetic */ CollapsiblePreferenceGroupController this$0;
    final /* synthetic */ PreferenceGroup val$group;

    CollapsiblePreferenceGroupController$1(CollapsiblePreferenceGroupController collapsiblePreferenceGroupController, PreferenceGroup preferenceGroup) {
        this.this$0 = collapsiblePreferenceGroupController;
        this.val$group = preferenceGroup;
    }

    @Override // android.support.v7.preference.Preference$OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        this.val$group.setInitialExpandedChildrenCount(Integer.MAX_VALUE);
        this.this$0.mPreferenceGroupAdapter.onPreferenceHierarchyChange(preference);
        PreferenceGroup$OnExpandButtonClickListener onExpandButtonClickListener = this.val$group.getOnExpandButtonClickListener();
        if (onExpandButtonClickListener == null) {
            return true;
        }
        onExpandButtonClickListener.onExpandButtonClick();
        return true;
    }
}
