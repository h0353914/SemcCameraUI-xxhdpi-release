package android.support.v4.view;

class ViewPager$3 implements Runnable {
    final /* synthetic */ ViewPager this$0;

    ViewPager$3(ViewPager viewPager) {
        this.this$0 = viewPager;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.setScrollState(0);
        this.this$0.populate();
    }
}
