package android.support.v7.preference;

import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.annotation.VisibleForTesting;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.util.DiffUtil;
import android.support.v7.widget.RecyclerView$Adapter;
import android.support.v7.widget.RecyclerView$ViewHolder;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public class PreferenceGroupAdapter extends RecyclerView$Adapter<PreferenceViewHolder> implements Preference$OnPreferenceChangeInternalListener, PreferenceGroup$PreferencePositionCallback {
    private Handler mHandler;
    private PreferenceGroup mPreferenceGroup;
    private CollapsiblePreferenceGroupController mPreferenceGroupController;
    private List<PreferenceGroupAdapter$PreferenceLayout> mPreferenceLayouts;
    private List<Preference> mPreferenceList;
    private List<Preference> mPreferenceListInternal;
    private Runnable mSyncRunnable;
    private PreferenceGroupAdapter$PreferenceLayout mTempPreferenceLayout;

    @Override // android.support.v7.widget.RecyclerView$Adapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(RecyclerView$ViewHolder recyclerView$ViewHolder, int i) {
        onBindViewHolder((PreferenceViewHolder) recyclerView$ViewHolder, i);
    }

    @Override // android.support.v7.widget.RecyclerView$Adapter
    public /* bridge */ /* synthetic */ RecyclerView$ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return onCreateViewHolder(viewGroup, i);
    }

    public PreferenceGroupAdapter(PreferenceGroup preferenceGroup) {
        this(preferenceGroup, new Handler());
    }

    private PreferenceGroupAdapter(PreferenceGroup preferenceGroup, Handler handler) {
        this.mTempPreferenceLayout = new PreferenceGroupAdapter$PreferenceLayout();
        this.mSyncRunnable = new PreferenceGroupAdapter$1(this);
        this.mPreferenceGroup = preferenceGroup;
        this.mHandler = handler;
        this.mPreferenceGroupController = new CollapsiblePreferenceGroupController(preferenceGroup, this);
        this.mPreferenceGroup.setOnPreferenceChangeInternalListener(this);
        this.mPreferenceList = new ArrayList();
        this.mPreferenceListInternal = new ArrayList();
        this.mPreferenceLayouts = new ArrayList();
        if (this.mPreferenceGroup instanceof PreferenceScreen) {
            setHasStableIds(((PreferenceScreen) this.mPreferenceGroup).shouldUseGeneratedIds());
        } else {
            setHasStableIds(true);
        }
        syncMyPreferences();
    }

    @VisibleForTesting
    static PreferenceGroupAdapter createInstanceWithCustomHandler(PreferenceGroup preferenceGroup, Handler handler) {
        return new PreferenceGroupAdapter(preferenceGroup, handler);
    }

    void syncMyPreferences() {
        Iterator<Preference> it = this.mPreferenceListInternal.iterator();
        while (it.hasNext()) {
            it.next().setOnPreferenceChangeInternalListener(null);
        }
        ArrayList arrayList = new ArrayList(this.mPreferenceListInternal.size());
        flattenPreferenceGroup(arrayList, this.mPreferenceGroup);
        List<Preference> listCreateVisiblePreferencesList = this.mPreferenceGroupController.createVisiblePreferencesList(this.mPreferenceGroup);
        List<Preference> list = this.mPreferenceList;
        this.mPreferenceList = listCreateVisiblePreferencesList;
        this.mPreferenceListInternal = arrayList;
        PreferenceManager preferenceManager = this.mPreferenceGroup.getPreferenceManager();
        if (preferenceManager != null && preferenceManager.getPreferenceComparisonCallback() != null) {
            DiffUtil.calculateDiff(new PreferenceGroupAdapter$2(this, list, listCreateVisiblePreferencesList, preferenceManager.getPreferenceComparisonCallback())).dispatchUpdatesTo(this);
        } else {
            notifyDataSetChanged();
        }
        Iterator<Preference> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            it2.next().clearWasDetached();
        }
    }

    private void flattenPreferenceGroup(List<Preference> list, PreferenceGroup preferenceGroup) {
        preferenceGroup.sortPreferences();
        int preferenceCount = preferenceGroup.getPreferenceCount();
        for (int i = 0; i < preferenceCount; i++) {
            Preference preference = preferenceGroup.getPreference(i);
            list.add(preference);
            addPreferenceClassName(preference);
            if (preference instanceof PreferenceGroup) {
                PreferenceGroup preferenceGroup2 = (PreferenceGroup) preference;
                if (preferenceGroup2.isOnSameScreenAsChildren()) {
                    flattenPreferenceGroup(list, preferenceGroup2);
                }
            }
            preference.setOnPreferenceChangeInternalListener(this);
        }
    }

    private PreferenceGroupAdapter$PreferenceLayout createPreferenceLayout(Preference preference, PreferenceGroupAdapter$PreferenceLayout preferenceGroupAdapter$PreferenceLayout) {
        if (preferenceGroupAdapter$PreferenceLayout == null) {
            preferenceGroupAdapter$PreferenceLayout = new PreferenceGroupAdapter$PreferenceLayout();
        }
        preferenceGroupAdapter$PreferenceLayout.mName = preference.getClass().getName();
        preferenceGroupAdapter$PreferenceLayout.mResId = preference.getLayoutResource();
        preferenceGroupAdapter$PreferenceLayout.mWidgetResId = preference.getWidgetLayoutResource();
        return preferenceGroupAdapter$PreferenceLayout;
    }

    private void addPreferenceClassName(Preference preference) {
        PreferenceGroupAdapter$PreferenceLayout preferenceGroupAdapter$PreferenceLayoutCreatePreferenceLayout = createPreferenceLayout(preference, null);
        if (this.mPreferenceLayouts.contains(preferenceGroupAdapter$PreferenceLayoutCreatePreferenceLayout)) {
            return;
        }
        this.mPreferenceLayouts.add(preferenceGroupAdapter$PreferenceLayoutCreatePreferenceLayout);
    }

    @Override // android.support.v7.widget.RecyclerView$Adapter
    public int getItemCount() {
        return this.mPreferenceList.size();
    }

    public Preference getItem(int i) {
        if (i < 0 || i >= getItemCount()) {
            return null;
        }
        return this.mPreferenceList.get(i);
    }

    @Override // android.support.v7.widget.RecyclerView$Adapter
    public long getItemId(int i) {
        if (hasStableIds()) {
            return getItem(i).getId();
        }
        return -1L;
    }

    @Override // android.support.v7.preference.Preference$OnPreferenceChangeInternalListener
    public void onPreferenceChange(Preference preference) {
        int iIndexOf = this.mPreferenceList.indexOf(preference);
        if (iIndexOf != -1) {
            notifyItemChanged(iIndexOf, preference);
        }
    }

    @Override // android.support.v7.preference.Preference$OnPreferenceChangeInternalListener
    public void onPreferenceHierarchyChange(Preference preference) {
        this.mHandler.removeCallbacks(this.mSyncRunnable);
        this.mHandler.post(this.mSyncRunnable);
    }

    @Override // android.support.v7.preference.Preference$OnPreferenceChangeInternalListener
    public void onPreferenceVisibilityChange(Preference preference) {
        if (this.mPreferenceListInternal.contains(preference) && !this.mPreferenceGroupController.onPreferenceVisibilityChange(preference)) {
            if (preference.isVisible()) {
                int i = -1;
                for (Preference preference2 : this.mPreferenceListInternal) {
                    if (preference.equals(preference2)) {
                        break;
                    } else if (preference2.isVisible()) {
                        i++;
                    }
                }
                int i2 = i + 1;
                this.mPreferenceList.add(i2, preference);
                notifyItemInserted(i2);
                return;
            }
            int size = this.mPreferenceList.size();
            int i3 = 0;
            while (i3 < size && !preference.equals(this.mPreferenceList.get(i3))) {
                if (i3 == size - 1) {
                    return;
                } else {
                    i3++;
                }
            }
            this.mPreferenceList.remove(i3);
            notifyItemRemoved(i3);
        }
    }

    @Override // android.support.v7.widget.RecyclerView$Adapter
    public int getItemViewType(int i) {
        this.mTempPreferenceLayout = createPreferenceLayout(getItem(i), this.mTempPreferenceLayout);
        int iIndexOf = this.mPreferenceLayouts.indexOf(this.mTempPreferenceLayout);
        if (iIndexOf != -1) {
            return iIndexOf;
        }
        int size = this.mPreferenceLayouts.size();
        this.mPreferenceLayouts.add(new PreferenceGroupAdapter$PreferenceLayout(this.mTempPreferenceLayout));
        return size;
    }

    @Override // android.support.v7.widget.RecyclerView$Adapter
    public PreferenceViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        PreferenceGroupAdapter$PreferenceLayout preferenceGroupAdapter$PreferenceLayout = this.mPreferenceLayouts.get(i);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(viewGroup.getContext());
        TypedArray typedArrayObtainStyledAttributes = viewGroup.getContext().obtainStyledAttributes((AttributeSet) null, R$styleable.BackgroundStyle);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R$styleable.BackgroundStyle_android_selectableItemBackground);
        if (drawable == null) {
            drawable = ContextCompat.getDrawable(viewGroup.getContext(), 17301602);
        }
        typedArrayObtainStyledAttributes.recycle();
        View viewInflate = layoutInflaterFrom.inflate(preferenceGroupAdapter$PreferenceLayout.mResId, viewGroup, false);
        if (viewInflate.getBackground() == null) {
            ViewCompat.setBackground(viewInflate, drawable);
        }
        ViewGroup viewGroup2 = (ViewGroup) viewInflate.findViewById(16908312);
        if (viewGroup2 != null) {
            if (preferenceGroupAdapter$PreferenceLayout.mWidgetResId != 0) {
                layoutInflaterFrom.inflate(preferenceGroupAdapter$PreferenceLayout.mWidgetResId, viewGroup2);
            } else {
                viewGroup2.setVisibility(8);
            }
        }
        return new PreferenceViewHolder(viewInflate);
    }

    public void onBindViewHolder(PreferenceViewHolder preferenceViewHolder, int i) {
        getItem(i).onBindViewHolder(preferenceViewHolder);
    }

    @Override // android.support.v7.preference.PreferenceGroup$PreferencePositionCallback
    public int getPreferenceAdapterPosition(String str) {
        int size = this.mPreferenceList.size();
        for (int i = 0; i < size; i++) {
            if (TextUtils.equals(str, this.mPreferenceList.get(i).getKey())) {
                return i;
            }
        }
        return -1;
    }

    @Override // android.support.v7.preference.PreferenceGroup$PreferencePositionCallback
    public int getPreferenceAdapterPosition(Preference preference) {
        int size = this.mPreferenceList.size();
        for (int i = 0; i < size; i++) {
            Preference preference2 = this.mPreferenceList.get(i);
            if (preference2 != null && preference2.equals(preference)) {
                return i;
            }
        }
        return -1;
    }
}
