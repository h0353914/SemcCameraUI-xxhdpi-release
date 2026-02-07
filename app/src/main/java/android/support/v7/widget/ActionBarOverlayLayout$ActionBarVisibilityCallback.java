package android.support.v7.widget;

/* JADX INFO: loaded from: classes.dex */
public interface ActionBarOverlayLayout$ActionBarVisibilityCallback {
    void enableContentAnimations(boolean z);

    void hideForSystem();

    void onContentScrollStarted();

    void onContentScrollStopped();

    void onWindowVisibilityChanged(int i);

    void showForSystem();
}
