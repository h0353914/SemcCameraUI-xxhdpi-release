package android.support.v7.preference;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class CollapsiblePreferenceGroupController {
    private final Context mContext;
    private boolean mHasExpandablePreference = false;
    final PreferenceGroupAdapter mPreferenceGroupAdapter;

    CollapsiblePreferenceGroupController(PreferenceGroup preferenceGroup, PreferenceGroupAdapter preferenceGroupAdapter) {
        this.mPreferenceGroupAdapter = preferenceGroupAdapter;
        this.mContext = preferenceGroup.getContext();
    }

    public List<Preference> createVisiblePreferencesList(PreferenceGroup preferenceGroup) {
        return createInnerVisiblePreferencesList(preferenceGroup);
    }

    private List<Preference> createInnerVisiblePreferencesList(PreferenceGroup preferenceGroup) {
        this.mHasExpandablePreference = false;
        boolean z = preferenceGroup.getInitialExpandedChildrenCount() != Integer.MAX_VALUE;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int preferenceCount = preferenceGroup.getPreferenceCount();
        int i = 0;
        for (int i2 = 0; i2 < preferenceCount; i2++) {
            Preference preference = preferenceGroup.getPreference(i2);
            if (preference.isVisible()) {
                if (!z || i < preferenceGroup.getInitialExpandedChildrenCount()) {
                    arrayList.add(preference);
                } else {
                    arrayList2.add(preference);
                }
                if (preference instanceof PreferenceGroup) {
                    PreferenceGroup preferenceGroup2 = (PreferenceGroup) preference;
                    if (preferenceGroup2.isOnSameScreenAsChildren()) {
                        List<Preference> listCreateInnerVisiblePreferencesList = createInnerVisiblePreferencesList(preferenceGroup2);
                        if (z && this.mHasExpandablePreference) {
                            throw new IllegalArgumentException("Nested expand buttons are not supported!");
                        }
                        for (Preference preference2 : listCreateInnerVisiblePreferencesList) {
                            if (!z || i < preferenceGroup.getInitialExpandedChildrenCount()) {
                                arrayList.add(preference2);
                            } else {
                                arrayList2.add(preference2);
                            }
                            i++;
                        }
                    } else {
                        continue;
                    }
                } else {
                    i++;
                }
            }
        }
        if (z && i > preferenceGroup.getInitialExpandedChildrenCount()) {
            arrayList.add(createExpandButton(preferenceGroup, arrayList2));
        }
        this.mHasExpandablePreference |= z;
        return arrayList;
    }

    public boolean onPreferenceVisibilityChange(Preference preference) {
        if (!(preference instanceof PreferenceGroup) && !this.mHasExpandablePreference) {
            return false;
        }
        this.mPreferenceGroupAdapter.onPreferenceHierarchyChange(preference);
        return true;
    }

    private CollapsiblePreferenceGroupController$ExpandButton createExpandButton(PreferenceGroup preferenceGroup, List<Preference> list) {
        CollapsiblePreferenceGroupController$ExpandButton collapsiblePreferenceGroupController$ExpandButton = new CollapsiblePreferenceGroupController$ExpandButton(this.mContext, list, preferenceGroup.getId());
        collapsiblePreferenceGroupController$ExpandButton.setOnPreferenceClickListener(new CollapsiblePreferenceGroupController$1(this, preferenceGroup));
        return collapsiblePreferenceGroupController$ExpandButton;
    }
}
