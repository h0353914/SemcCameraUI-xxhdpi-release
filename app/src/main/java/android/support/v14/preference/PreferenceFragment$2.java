package android.support.v14.preference;

class PreferenceFragment$2 implements Runnable {
    final /* synthetic */ PreferenceFragment this$0;

    PreferenceFragment$2(PreferenceFragment preferenceFragment) {
        this.this$0 = preferenceFragment;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.mList.focusableViewAvailable(this.this$0.mList);
    }
}
