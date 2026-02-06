package android.support.v4.app;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;

class Fragment$2 extends FragmentContainer {
    final /* synthetic */ Fragment this$0;

    Fragment$2(Fragment fragment) {
        this.this$0 = fragment;
    }

    @Override // android.support.v4.app.FragmentContainer
    @Nullable
    public View onFindViewById(int i) {
        if (this.this$0.mView == null) {
            throw new IllegalStateException("Fragment does not have a view");
        }
        return this.this$0.mView.findViewById(i);
    }

    @Override // android.support.v4.app.FragmentContainer
    public boolean onHasView() {
        return this.this$0.mView != null;
    }

    @Override // android.support.v4.app.FragmentContainer
    public Fragment instantiate(Context context, String str, Bundle bundle) {
        return this.this$0.mHost.instantiate(context, str, bundle);
    }
}
