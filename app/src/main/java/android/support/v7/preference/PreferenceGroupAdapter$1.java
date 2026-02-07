package android.support.v7.preference;

/* JADX INFO: loaded from: classes.dex */
class PreferenceGroupAdapter$1 implements Runnable {
    final /* synthetic */ PreferenceGroupAdapter this$0;

    PreferenceGroupAdapter$1(PreferenceGroupAdapter preferenceGroupAdapter) {
        this.this$0 = preferenceGroupAdapter;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.syncMyPreferences();
    }
}
