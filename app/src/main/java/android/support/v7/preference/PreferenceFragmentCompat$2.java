package android.support.v7.preference;

class PreferenceFragmentCompat$2 implements Runnable {
    final /* synthetic */ PreferenceFragmentCompat this$0;

    PreferenceFragmentCompat$2(PreferenceFragmentCompat preferenceFragmentCompat) {
        this.this$0 = preferenceFragmentCompat;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.mList.focusableViewAvailable(this.this$0.mList);
    }
}
