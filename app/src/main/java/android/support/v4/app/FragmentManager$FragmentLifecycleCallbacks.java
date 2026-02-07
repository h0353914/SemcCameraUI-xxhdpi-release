package android.support.v4.app;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class FragmentManager$FragmentLifecycleCallbacks {
    public void onFragmentActivityCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @Nullable Bundle bundle) {
    }

    public void onFragmentAttached(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @NonNull Context context) {
    }

    public void onFragmentCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @Nullable Bundle bundle) {
    }

    public void onFragmentDestroyed(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
    }

    public void onFragmentDetached(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
    }

    public void onFragmentPaused(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
    }

    public void onFragmentPreAttached(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @NonNull Context context) {
    }

    public void onFragmentPreCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @Nullable Bundle bundle) {
    }

    public void onFragmentResumed(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
    }

    public void onFragmentSaveInstanceState(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @NonNull Bundle bundle) {
    }

    public void onFragmentStarted(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
    }

    public void onFragmentStopped(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
    }

    public void onFragmentViewCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @NonNull View view, @Nullable Bundle bundle) {
    }

    public void onFragmentViewDestroyed(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
    }
}
