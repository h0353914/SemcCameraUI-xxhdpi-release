package android.support.v4.view;

import android.view.View;
import android.view.View$OnClickListener;

class PagerTabStrip$2 implements View$OnClickListener {
    final /* synthetic */ PagerTabStrip this$0;

    PagerTabStrip$2(PagerTabStrip pagerTabStrip) {
        this.this$0 = pagerTabStrip;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        this.this$0.mPager.setCurrentItem(this.this$0.mPager.getCurrentItem() + 1);
    }
}
