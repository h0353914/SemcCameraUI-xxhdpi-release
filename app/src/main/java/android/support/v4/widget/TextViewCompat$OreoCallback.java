package android.support.v4.widget;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.support.annotation.RequiresApi;
import android.text.Editable;
import android.view.ActionMode;
import android.view.ActionMode$Callback;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

@RequiresApi(26)
class TextViewCompat$OreoCallback implements ActionMode$Callback {
    private static final int MENU_ITEM_ORDER_PROCESS_TEXT_INTENT_ACTIONS_START = 100;
    private final ActionMode$Callback mCallback;
    private boolean mCanUseMenuBuilderReferences;
    private boolean mInitializedMenuBuilderReferences = false;
    private Class mMenuBuilderClass;
    private Method mMenuBuilderRemoveItemAtMethod;
    private final TextView mTextView;

    TextViewCompat$OreoCallback(ActionMode$Callback actionMode$Callback, TextView textView) {
        this.mCallback = actionMode$Callback;
        this.mTextView = textView;
    }

    @Override // android.view.ActionMode$Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        return this.mCallback.onCreateActionMode(actionMode, menu);
    }

    @Override // android.view.ActionMode$Callback
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        recomputeProcessTextMenuItems(menu);
        return this.mCallback.onPrepareActionMode(actionMode, menu);
    }

    @Override // android.view.ActionMode$Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        return this.mCallback.onActionItemClicked(actionMode, menuItem);
    }

    @Override // android.view.ActionMode$Callback
    public void onDestroyActionMode(ActionMode actionMode) {
        this.mCallback.onDestroyActionMode(actionMode);
    }

    private void recomputeProcessTextMenuItems(Menu menu) {
        Context context = this.mTextView.getContext();
        PackageManager packageManager = context.getPackageManager();
        if (!this.mInitializedMenuBuilderReferences) {
            this.mInitializedMenuBuilderReferences = true;
            try {
                this.mMenuBuilderClass = Class.forName("com.android.internal.view.menu.MenuBuilder");
                this.mMenuBuilderRemoveItemAtMethod = this.mMenuBuilderClass.getDeclaredMethod("removeItemAt", Integer.TYPE);
                this.mCanUseMenuBuilderReferences = true;
            } catch (ClassNotFoundException | NoSuchMethodException unused) {
                this.mMenuBuilderClass = null;
                this.mMenuBuilderRemoveItemAtMethod = null;
                this.mCanUseMenuBuilderReferences = false;
            }
        }
        try {
            Method declaredMethod = (this.mCanUseMenuBuilderReferences && this.mMenuBuilderClass.isInstance(menu)) ? this.mMenuBuilderRemoveItemAtMethod : menu.getClass().getDeclaredMethod("removeItemAt", Integer.TYPE);
            for (int size = menu.size() - 1; size >= 0; size--) {
                MenuItem item = menu.getItem(size);
                if (item.getIntent() != null && "android.intent.action.PROCESS_TEXT".equals(item.getIntent().getAction())) {
                    declaredMethod.invoke(menu, Integer.valueOf(size));
                }
            }
            List<ResolveInfo> supportedActivities = getSupportedActivities(context, packageManager);
            for (int i = 0; i < supportedActivities.size(); i++) {
                ResolveInfo resolveInfo = supportedActivities.get(i);
                menu.add(0, 0, 100 + i, resolveInfo.loadLabel(packageManager)).setIntent(createProcessTextIntentForResolveInfo(resolveInfo, this.mTextView)).setShowAsAction(1);
            }
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
        }
    }

    private List<ResolveInfo> getSupportedActivities(Context context, PackageManager packageManager) {
        ArrayList arrayList = new ArrayList();
        if (!(context instanceof Activity)) {
            return arrayList;
        }
        for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(createProcessTextIntent(), 0)) {
            if (isSupportedActivity(resolveInfo, context)) {
                arrayList.add(resolveInfo);
            }
        }
        return arrayList;
    }

    private boolean isSupportedActivity(ResolveInfo resolveInfo, Context context) {
        if (context.getPackageName().equals(resolveInfo.activityInfo.packageName)) {
            return true;
        }
        if (resolveInfo.activityInfo.exported) {
            return resolveInfo.activityInfo.permission == null || context.checkSelfPermission(resolveInfo.activityInfo.permission) == 0;
        }
        return false;
    }

    private Intent createProcessTextIntentForResolveInfo(ResolveInfo resolveInfo, TextView textView) {
        return createProcessTextIntent().putExtra("android.intent.extra.PROCESS_TEXT_READONLY", !isEditable(textView)).setClassName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
    }

    private boolean isEditable(TextView textView) {
        return (textView instanceof Editable) && textView.onCheckIsTextEditor() && textView.isEnabled();
    }

    private Intent createProcessTextIntent() {
        return new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain");
    }
}
