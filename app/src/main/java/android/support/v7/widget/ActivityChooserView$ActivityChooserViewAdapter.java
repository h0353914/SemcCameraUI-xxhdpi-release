package android.support.v7.widget;

import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.support.v7.appcompat.R$id;
import android.support.v7.appcompat.R$layout;
import android.support.v7.appcompat.R$string;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
class ActivityChooserView$ActivityChooserViewAdapter extends BaseAdapter {
    private static final int ITEM_VIEW_TYPE_ACTIVITY = 0;
    private static final int ITEM_VIEW_TYPE_COUNT = 3;
    private static final int ITEM_VIEW_TYPE_FOOTER = 1;
    public static final int MAX_ACTIVITY_COUNT_DEFAULT = 4;
    public static final int MAX_ACTIVITY_COUNT_UNLIMITED = Integer.MAX_VALUE;
    private ActivityChooserModel mDataModel;
    private boolean mHighlightDefaultActivity;
    private int mMaxActivityCount = 4;
    private boolean mShowDefaultActivity;
    private boolean mShowFooterView;
    final /* synthetic */ ActivityChooserView this$0;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 3;
    }

    ActivityChooserView$ActivityChooserViewAdapter(ActivityChooserView activityChooserView) {
        this.this$0 = activityChooserView;
    }

    public void setDataModel(ActivityChooserModel activityChooserModel) {
        ActivityChooserModel dataModel = this.this$0.mAdapter.getDataModel();
        if (dataModel != null && this.this$0.isShown()) {
            dataModel.unregisterObserver(this.this$0.mModelDataSetObserver);
        }
        this.mDataModel = activityChooserModel;
        if (activityChooserModel != null && this.this$0.isShown()) {
            activityChooserModel.registerObserver(this.this$0.mModelDataSetObserver);
        }
        notifyDataSetChanged();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return (this.mShowFooterView && i == getCount() - 1) ? 1 : 0;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        int activityCount = this.mDataModel.getActivityCount();
        if (!this.mShowDefaultActivity && this.mDataModel.getDefaultActivity() != null) {
            activityCount--;
        }
        int iMin = Math.min(activityCount, this.mMaxActivityCount);
        return this.mShowFooterView ? iMin + 1 : iMin;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        switch (getItemViewType(i)) {
            case 0:
                if (!this.mShowDefaultActivity && this.mDataModel.getDefaultActivity() != null) {
                    i++;
                }
                return this.mDataModel.getActivity(i);
            case 1:
                return null;
            default:
                throw new IllegalArgumentException();
        }
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        switch (getItemViewType(i)) {
            case 0:
                if (view == null || view.getId() != R$id.list_item) {
                    view = LayoutInflater.from(this.this$0.getContext()).inflate(R$layout.abc_activity_chooser_view_list_item, viewGroup, false);
                }
                PackageManager packageManager = this.this$0.getContext().getPackageManager();
                ImageView imageView = (ImageView) view.findViewById(R$id.icon);
                ResolveInfo resolveInfo = (ResolveInfo) getItem(i);
                imageView.setImageDrawable(resolveInfo.loadIcon(packageManager));
                ((TextView) view.findViewById(R$id.title)).setText(resolveInfo.loadLabel(packageManager));
                if (this.mShowDefaultActivity && i == 0 && this.mHighlightDefaultActivity) {
                    view.setActivated(true);
                } else {
                    view.setActivated(false);
                }
                return view;
            case 1:
                if (view != null && view.getId() == 1) {
                    return view;
                }
                View viewInflate = LayoutInflater.from(this.this$0.getContext()).inflate(R$layout.abc_activity_chooser_view_list_item, viewGroup, false);
                viewInflate.setId(1);
                ((TextView) viewInflate.findViewById(R$id.title)).setText(this.this$0.getContext().getString(R$string.abc_activity_chooser_view_see_all));
                return viewInflate;
            default:
                throw new IllegalArgumentException();
        }
    }

    public int measureContentWidth() {
        int i = this.mMaxActivityCount;
        this.mMaxActivityCount = Integer.MAX_VALUE;
        int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(0, 0);
        int iMakeMeasureSpec2 = View$MeasureSpec.makeMeasureSpec(0, 0);
        int count = getCount();
        int iMax = 0;
        View view = null;
        for (int i2 = 0; i2 < count; i2++) {
            view = getView(i2, view, null);
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax = Math.max(iMax, view.getMeasuredWidth());
        }
        this.mMaxActivityCount = i;
        return iMax;
    }

    public void setMaxActivityCount(int i) {
        if (this.mMaxActivityCount != i) {
            this.mMaxActivityCount = i;
            notifyDataSetChanged();
        }
    }

    public ResolveInfo getDefaultActivity() {
        return this.mDataModel.getDefaultActivity();
    }

    public void setShowFooterView(boolean z) {
        if (this.mShowFooterView != z) {
            this.mShowFooterView = z;
            notifyDataSetChanged();
        }
    }

    public int getActivityCount() {
        return this.mDataModel.getActivityCount();
    }

    public int getHistorySize() {
        return this.mDataModel.getHistorySize();
    }

    public ActivityChooserModel getDataModel() {
        return this.mDataModel;
    }

    public void setShowDefaultActivity(boolean z, boolean z2) {
        if (this.mShowDefaultActivity == z && this.mHighlightDefaultActivity == z2) {
            return;
        }
        this.mShowDefaultActivity = z;
        this.mHighlightDefaultActivity = z2;
        notifyDataSetChanged();
    }

    public boolean getShowDefaultActivity() {
        return this.mShowDefaultActivity;
    }
}
