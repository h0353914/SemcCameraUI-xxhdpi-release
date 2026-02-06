package android.support.v7.preference;

class PreferenceGroup$1 implements Runnable {
    final /* synthetic */ PreferenceGroup this$0;

    PreferenceGroup$1(PreferenceGroup preferenceGroup) {
        this.this$0 = preferenceGroup;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this) {
            this.this$0.mIdRecycleCache.clear();
        }
    }
}
