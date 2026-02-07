package android.support.v4.app;

/* JADX INFO: loaded from: classes.dex */
final class BackStackRecord$Op {
    int cmd;
    int enterAnim;
    int exitAnim;
    Fragment fragment;
    int popEnterAnim;
    int popExitAnim;

    BackStackRecord$Op() {
    }

    BackStackRecord$Op(int i, Fragment fragment) {
        this.cmd = i;
        this.fragment = fragment;
    }
}
