package android.support.v7.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build$VERSION;
import android.support.v4.view.ActionProvider;
import android.support.v7.appcompat.R$attr;
import android.support.v7.appcompat.R$string;
import android.support.v7.content.res.AppCompatResources;
import android.util.TypedValue;
import android.view.SubMenu;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class ShareActionProvider extends ActionProvider {
    private static final int DEFAULT_INITIAL_ACTIVITY_COUNT = 4;
    public static final String DEFAULT_SHARE_HISTORY_FILE_NAME = "share_history.xml";
    final Context mContext;
    private int mMaxShownActivityCount;
    private ActivityChooserModel$OnChooseActivityListener mOnChooseActivityListener;
    private final ShareActionProvider$ShareMenuItemOnMenuItemClickListener mOnMenuItemClickListener;
    ShareActionProvider$OnShareTargetSelectedListener mOnShareTargetSelectedListener;
    String mShareHistoryFileName;

    @Override // android.support.v4.view.ActionProvider
    public boolean hasSubMenu() {
        return true;
    }

    public ShareActionProvider(Context context) {
        super(context);
        this.mMaxShownActivityCount = 4;
        this.mOnMenuItemClickListener = new ShareActionProvider$ShareMenuItemOnMenuItemClickListener(this);
        this.mShareHistoryFileName = "share_history.xml";
        this.mContext = context;
    }

    public void setOnShareTargetSelectedListener(ShareActionProvider$OnShareTargetSelectedListener shareActionProvider$OnShareTargetSelectedListener) {
        this.mOnShareTargetSelectedListener = shareActionProvider$OnShareTargetSelectedListener;
        setActivityChooserPolicyIfNeeded();
    }

    @Override // android.support.v4.view.ActionProvider
    public View onCreateActionView() {
        ActivityChooserView activityChooserView = new ActivityChooserView(this.mContext);
        if (!activityChooserView.isInEditMode()) {
            activityChooserView.setActivityChooserModel(ActivityChooserModel.get(this.mContext, this.mShareHistoryFileName));
        }
        TypedValue typedValue = new TypedValue();
        this.mContext.getTheme().resolveAttribute(R$attr.actionModeShareDrawable, typedValue, true);
        activityChooserView.setExpandActivityOverflowButtonDrawable(AppCompatResources.getDrawable(this.mContext, typedValue.resourceId));
        activityChooserView.setProvider(this);
        activityChooserView.setDefaultActionButtonContentDescription(R$string.abc_shareactionprovider_share_with_application);
        activityChooserView.setExpandActivityOverflowButtonContentDescription(R$string.abc_shareactionprovider_share_with);
        return activityChooserView;
    }

    @Override // android.support.v4.view.ActionProvider
    public void onPrepareSubMenu(SubMenu subMenu) {
        subMenu.clear();
        ActivityChooserModel activityChooserModel = ActivityChooserModel.get(this.mContext, this.mShareHistoryFileName);
        PackageManager packageManager = this.mContext.getPackageManager();
        int activityCount = activityChooserModel.getActivityCount();
        int iMin = Math.min(activityCount, this.mMaxShownActivityCount);
        for (int i = 0; i < iMin; i++) {
            ResolveInfo activity = activityChooserModel.getActivity(i);
            subMenu.add(0, i, i, activity.loadLabel(packageManager)).setIcon(activity.loadIcon(packageManager)).setOnMenuItemClickListener(this.mOnMenuItemClickListener);
        }
        if (iMin < activityCount) {
            SubMenu subMenuAddSubMenu = subMenu.addSubMenu(0, iMin, iMin, this.mContext.getString(R$string.abc_activity_chooser_view_see_all));
            for (int i2 = 0; i2 < activityCount; i2++) {
                ResolveInfo activity2 = activityChooserModel.getActivity(i2);
                subMenuAddSubMenu.add(0, i2, i2, activity2.loadLabel(packageManager)).setIcon(activity2.loadIcon(packageManager)).setOnMenuItemClickListener(this.mOnMenuItemClickListener);
            }
        }
    }

    public void setShareHistoryFileName(String str) {
        this.mShareHistoryFileName = str;
        setActivityChooserPolicyIfNeeded();
    }

    public void setShareIntent(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if ("android.intent.action.SEND".equals(action) || "android.intent.action.SEND_MULTIPLE".equals(action)) {
                updateIntent(intent);
            }
        }
        ActivityChooserModel.get(this.mContext, this.mShareHistoryFileName).setIntent(intent);
    }

    private void setActivityChooserPolicyIfNeeded() {
        if (this.mOnShareTargetSelectedListener == null) {
            return;
        }
        if (this.mOnChooseActivityListener == null) {
            this.mOnChooseActivityListener = new ShareActionProvider$ShareActivityChooserModelPolicy(this);
        }
        ActivityChooserModel.get(this.mContext, this.mShareHistoryFileName).setOnChooseActivityListener(this.mOnChooseActivityListener);
    }

    void updateIntent(Intent intent) {
        if (Build$VERSION.SDK_INT >= 21) {
            intent.addFlags(134742016);
        } else {
            intent.addFlags(524288);
        }
    }
}
