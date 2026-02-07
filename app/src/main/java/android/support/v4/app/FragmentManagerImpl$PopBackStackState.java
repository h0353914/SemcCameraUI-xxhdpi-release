package android.support.v4.app;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class FragmentManagerImpl$PopBackStackState implements FragmentManagerImpl$OpGenerator {
    final int mFlags;
    final int mId;
    final String mName;
    final /* synthetic */ FragmentManagerImpl this$0;

    FragmentManagerImpl$PopBackStackState(FragmentManagerImpl fragmentManagerImpl, String str, int i, int i2) {
        this.this$0 = fragmentManagerImpl;
        this.mName = str;
        this.mId = i;
        this.mFlags = i2;
    }

    @Override // android.support.v4.app.FragmentManagerImpl$OpGenerator
    public boolean generateOps(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2) {
        FragmentManager fragmentManagerPeekChildFragmentManager;
        if (this.this$0.mPrimaryNav == null || this.mId >= 0 || this.mName != null || (fragmentManagerPeekChildFragmentManager = this.this$0.mPrimaryNav.peekChildFragmentManager()) == null || !fragmentManagerPeekChildFragmentManager.popBackStackImmediate()) {
            return this.this$0.popBackStackState(arrayList, arrayList2, this.mName, this.mId, this.mFlags);
        }
        return false;
    }
}
