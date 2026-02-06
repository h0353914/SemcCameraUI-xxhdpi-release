package android.support.v7.widget;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem$OnMenuItemClickListener;

class ShareActionProvider$ShareMenuItemOnMenuItemClickListener implements MenuItem$OnMenuItemClickListener {
    final /* synthetic */ ShareActionProvider this$0;

    ShareActionProvider$ShareMenuItemOnMenuItemClickListener(ShareActionProvider shareActionProvider) {
        this.this$0 = shareActionProvider;
    }

    @Override // android.view.MenuItem$OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        Intent intentChooseActivity = ActivityChooserModel.get(this.this$0.mContext, this.this$0.mShareHistoryFileName).chooseActivity(menuItem.getItemId());
        if (intentChooseActivity == null) {
            return true;
        }
        String action = intentChooseActivity.getAction();
        if ("android.intent.action.SEND".equals(action) || "android.intent.action.SEND_MULTIPLE".equals(action)) {
            this.this$0.updateIntent(intentChooseActivity);
        }
        this.this$0.mContext.startActivity(intentChooseActivity);
        return true;
    }
}
