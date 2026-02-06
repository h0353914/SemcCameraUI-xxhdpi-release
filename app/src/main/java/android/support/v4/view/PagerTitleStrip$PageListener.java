package android.support.v4.view;

import android.database.DataSetObserver;

class PagerTitleStrip$PageListener extends DataSetObserver implements ViewPager$OnPageChangeListener, ViewPager$OnAdapterChangeListener {
    private int mScrollState;
    final /* synthetic */ PagerTitleStrip this$0;

    PagerTitleStrip$PageListener(PagerTitleStrip pagerTitleStrip) {
        this.this$0 = pagerTitleStrip;
    }

    @Override // android.support.v4.view.ViewPager$OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
        if (f > 0.5f) {
            i++;
        }
        this.this$0.updateTextPositions(i, f, false);
    }

    @Override // android.support.v4.view.ViewPager$OnPageChangeListener
    public void onPageSelected(int i) {
        if (this.mScrollState == 0) {
            this.this$0.updateText(this.this$0.mPager.getCurrentItem(), this.this$0.mPager.getAdapter());
            this.this$0.updateTextPositions(this.this$0.mPager.getCurrentItem(), this.this$0.mLastKnownPositionOffset >= 0.0f ? this.this$0.mLastKnownPositionOffset : 0.0f, true);
        }
    }

    @Override // android.support.v4.view.ViewPager$OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
        this.mScrollState = i;
    }

    @Override // android.support.v4.view.ViewPager$OnAdapterChangeListener
    public void onAdapterChanged(ViewPager viewPager, PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
        this.this$0.updateAdapter(pagerAdapter, pagerAdapter2);
    }

    @Override // android.database.DataSetObserver
    public void onChanged() {
        this.this$0.updateText(this.this$0.mPager.getCurrentItem(), this.this$0.mPager.getAdapter());
        this.this$0.updateTextPositions(this.this$0.mPager.getCurrentItem(), this.this$0.mLastKnownPositionOffset >= 0.0f ? this.this$0.mLastKnownPositionOffset : 0.0f, true);
    }
}
