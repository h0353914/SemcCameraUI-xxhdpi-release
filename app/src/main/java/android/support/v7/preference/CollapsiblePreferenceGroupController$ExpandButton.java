package android.support.v7.preference;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class CollapsiblePreferenceGroupController$ExpandButton extends Preference {
    private long mId;

    CollapsiblePreferenceGroupController$ExpandButton(Context context, List<Preference> list, long j) {
        super(context);
        initLayout();
        setSummary(list);
        this.mId = j + 1000000;
    }

    private void initLayout() {
        setLayoutResource(R$layout.expand_button);
        setIcon(R$drawable.ic_arrow_down_24dp);
        setTitle(R$string.expand_button_title);
        setOrder(999);
    }

    private void setSummary(List<Preference> list) {
        ArrayList arrayList = new ArrayList();
        CharSequence string = null;
        for (Preference preference : list) {
            CharSequence title = preference.getTitle();
            boolean z = preference instanceof PreferenceGroup;
            if (z && !TextUtils.isEmpty(title)) {
                arrayList.add((PreferenceGroup) preference);
            }
            if (arrayList.contains(preference.getParent())) {
                if (z) {
                    arrayList.add((PreferenceGroup) preference);
                }
            } else if (!TextUtils.isEmpty(title)) {
                string = string == null ? title : getContext().getString(R$string.summary_collapsed_preference_list, string, title);
            }
        }
        setSummary(string);
    }

    @Override // android.support.v7.preference.Preference
    public void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        super.onBindViewHolder(preferenceViewHolder);
        preferenceViewHolder.setDividerAllowedAbove(false);
    }

    @Override // android.support.v7.preference.Preference
    public long getId() {
        return this.mId;
    }
}
